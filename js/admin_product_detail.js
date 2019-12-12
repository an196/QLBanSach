var flag = document.getElementById('dataTable').getElementsByTagName("tbody")[0].getElementsByTagName("tr").length;
var currentID = 0;


function addProduct()
{
    var Book = {
    idBook          : document.getElementById("idBook").value,
    nameBook        : document.getElementById("nameBook").value,
    nameAuthor      : document.getElementById("nameAuthor").value,
    idCategory      : document.getElementById("idCategory").value,
    imageBook       : document.getElementById("imageBook").value,
    priceBook       : document.getElementById("priceBook").value,
    dateGoodReceipt : document.getElementById("dateGoodReceipt").value,
    quantityInStock : document.getElementById("quantityInStock").value,
    quantitySold    : document.getElementById("quantitySold").value,
    views           : document.getElementById("views").value,
    description     : document.getElementById("description").value,
    idPublisher     : document.getElementById("idPublisher").value,
    origin          : document.getElementById("origin").value,
    }

    addProductIntoTable(Book);

    document.getElementById("idBook").value             ="";
    document.getElementById("nameBook").value           = "";
    document.getElementById("nameAuthor").value         = "";
    document.getElementById("idCategory").value         = "";
    document.getElementById("imageBook").value          = "";
    document.getElementById("priceBook").value          = "";
    document.getElementById("dateGoodReceipt").value    = "";
    document.getElementById("quantityInStock").value    = "";
    document.getElementById("quantitySold").value       = "";
    document.getElementById("views").value              = "";
    document.getElementById("description").value        = "";
    document.getElementById("idPublisher").value        = "";
    document.getElementById("origin").value             = "";
    $("#modalAdd").modal('hide');
}

function remove(id){
    console.log(id);
    var item = document.getElementById(id).parentElement.parentElement.parentElement;
    
    item.removeChild(document.getElementById(id).parentElement.parentElement);
    flag--;
}

function load_formUpdate(id)
{
    var num = String(id).substring(10,String(id).length);
    console.log(num);
    currentID = num;
    var item = document.getElementById(id).parentElement.parentElement.parentElement;
    document.getElementById("update_idBook").value = item.children[num - 1].children[0].textContent; 
    document.getElementById("update_nameBook").value =item.children[num - 1].children[1].textContent;
    document.getElementById("update_nameAuthor").value = item.children[num - 1].children[2].textContent;
    document.getElementById("update_idCategory").value = item.children[num - 1].children[3].textContent;
    document.getElementById("update_imageBook").value = item.children[num - 1].children[4].textContent;
    document.getElementById("update_priceBook").value = item.children[num - 1].children[5].textContent;
    document.getElementById("update_dateGoodReceipt").value = item.children[num - 1].children[6].textContent;
    document.getElementById("update_quantityInStock").value = item.children[num - 1].children[7].textContent;
    document.getElementById("update_quantitySold").value = item.children[num - 1].children[8].textContent;
    document.getElementById("update_views").value = item.children[num - 1].children[9].textContent;
    document.getElementById("update_description").value = item.children[num - 1].children[10].textContent;
    document.getElementById("update_idPublisher").value = item.children[num - 1].children[11].textContent;
    document.getElementById("update_origin").value = item.children[num - 1].children[12].textContent;
}

function updateTableProduct()
{
    var item = document.getElementById("dataTable").childNodes[3];
    console.log(item);

    item.children[currentID - 1].children[0].textContent = document.getElementById("update_idBook").value;
    item.children[currentID - 1].children[1].textContent = document.getElementById("update_nameBook").value;
    item.children[currentID - 1].children[2].textContent = document.getElementById("update_nameAuthor").value;
    item.children[currentID - 1].children[0].textContent = document.getElementById("update_idCategory").value;
    item.children[currentID - 1].children[1].textContent = document.getElementById("update_imageBook").value;
    item.children[currentID - 1].children[2].textContent = document.getElementById("update_priceBook").value;
    item.children[currentID - 1].children[0].textContent = document.getElementById("update_dateGoodReceipt").value;
    item.children[currentID - 1].children[1].textContent = document.getElementById("update_quantityInStock").value;
    item.children[currentID - 1].children[2].textContent = document.getElementById("update_quantitySold").value;
    item.children[currentID - 1].children[0].textContent = document.getElementById("update_views").value;
    item.children[currentID - 1].children[1].textContent = document.getElementById("update_description").value;
    item.children[currentID - 1].children[2].textContent = document.getElementById("update_idPublisher").value;
    item.children[currentID - 1].children[2].textContent = document.getElementById("update_origin").value;
    $("#modalUpdate").modal('hide');
}

function addProductIntoTable(item)
{
    flag++;
    //create content
    var node = document.createElement("tr");
    var nodeChild = document.createElement("td");
   
    var idBook = document.createTextNode(item.idBook);
    var child = nodeChild.appendChild(idBook);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);
   
    var nameBook = document.createTextNode(item.nameBook);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(nameBook);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var nameAuthor = document.createTextNode(item.nameAuthor);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(nameAuthor);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var idCategory = document.createTextNode(item.idCategory);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(idCategory);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var imageBook = document.createTextNode(item.imageBook);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(imageBook);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var priceBook = document.createTextNode(item.priceBook);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(priceBook);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var dateGoodReceipt = document.createTextNode(item.dateGoodReceipt);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(dateGoodReceipt);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var quantityInStock = document.createTextNode(item.quantityInStock);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(quantityInStock);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var quantitySold = document.createTextNode(item.quantitySold);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(quantitySold);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var views = document.createTextNode(item.views);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(views);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var description = document.createTextNode(item.description);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(description);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var idPublisher = document.createTextNode(item.idPublisher);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(idPublisher);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);
   
    var origin = document.createTextNode(item.origin);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(origin);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    //create button remove
    var td = document.createElement("td");
    var btnRemove = document.createElement("button");
    btnRemove.id = "btnRemove_" + flag;
    btnRemove.type = "button";
    btnRemove.className = "btn btn-danger";
    var icon =  document.createElement("i");
    icon.className = "fas fa-trash";
    btnRemove.appendChild(icon);
    btnRemove.onclick = ()=>{remove(btnRemove.id);};
    
    //create button edit
    var btnUpdate = document.createElement("button");
    btnUpdate.id = "btnUpadte_" + flag;
    btnUpdate.type = "button";
    btnUpdate.className = "btn btn-primary";
    btnUpdate.onclick = ()=> {load_formUpdate(btnUpdate.id)};
    icon =  document.createElement("i");
    icon.className = "fas fa-edit";
    btnUpdate.appendChild(icon);

    btnUpdate.setAttribute("data-toggle","modal");
    btnUpdate.setAttribute("data-target","#modalUpdate");
    td.appendChild(btnRemove);
    td.appendChild(btnUpdate);
    node.appendChild(td);

    //add into table
    var a = document.getElementById("dataTable").childNodes[3];
    console.log(a);
    a.appendChild(node);
}

/* ---------------------------------------------------
    FUNCTION PAGINATION 
----------------------------------------------------- */


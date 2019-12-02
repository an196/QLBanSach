var flag = 3;
var currentID = 0;

function addProduct()
{
    var product = {
    ID : document.getElementById("idProduct").value,
    Name : document.getElementById("nameProduct").value,
    Price : document.getElementById("priceProduct").value
    }

    addProductIntoTable(product);

    document.getElementById("idProduct").value ="";
    document.getElementById("nameProduct").value = "";
    document.getElementById("priceProduct").value = "";
    $("#modalAddProduct").modal('hide');
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
    document.getElementById("update_idProduct").value = item.children[num - 1].children[0].textContent; 
    document.getElementById("update_nameProduct").value =item.children[num - 1].children[1].textContent;
    document.getElementById("update_priceProduct").value = item.children[num - 1].children[2].textContent;

}

function updateTableProduct()
{
    var item = document.getElementById("tableProduct").childNodes[3];
    console.log(item);

    item.children[currentID - 1].children[0].textContent = document.getElementById("update_idProduct").value;
    item.children[currentID - 1].children[1].textContent = document.getElementById("update_nameProduct").value;
    item.children[currentID - 1].children[2].textContent = document.getElementById("update_priceProduct").value;
    $("#modalUpdateProduct").modal('hide');
}

function addProductIntoTable(pro)
{
    flag++;
    //create content
    var node =document.createElement("tr");
    var nodeChild = document.createElement("td");
   
    var id= document.createTextNode(pro.ID);
    var child = nodeChild.appendChild(id);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);
   
    var name = document.createTextNode(pro.Name);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(name);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);

    var price = document.createTextNode(pro.Price);
    nodeChild = document.createElement("td");
    child = nodeChild.appendChild(price);
    nodeChild.appendChild(child);
    node.appendChild(nodeChild);
   
    //create button
    var td = document.createElement("td");
    var btnRemove = document.createElement("button");
    btnRemove.id = "btnRemove_" + flag;
    btnRemove.type = "button";
    btnRemove.className = "btn btn-danger";
    btnRemove.onclick = ()=>{remove(btnRemove.id);};
    btnRemove.textContent = "Xóa";

    var btnUpdate = document.createElement("button");
    btnUpdate.style ="margin-left: 5px";
    btnUpdate.id = "btnUpadte_" + flag;
    btnUpdate.type = "button";
    btnUpdate.className = "btn btn-primary";
    btnUpdate.onclick = ()=> {load_formUpdate(btnUpdate.id)};
    btnUpdate.textContent = "Sửa";
    btnUpdate.setAttribute("data-toggle","modal");
    btnUpdate.setAttribute("data-target","#modalUpdateProduct");
    td.appendChild(btnRemove);
    td.appendChild(btnUpdate);
    node.appendChild(td);


    var a = document.getElementById("tableProduct").childNodes[3];
    console.log(a);
    a.appendChild(node);
}

/* ---------------------------------------------------
    FUNCTION PAGINATION 
----------------------------------------------------- */


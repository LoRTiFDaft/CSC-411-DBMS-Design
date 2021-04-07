
function update_model() {
    
    var id = document.getElementById("brand").value;
    var select = document.getElementById("model");
     
    var html ='<option value="">Select Model</option> ';
    models.filter(r=>r.BrandId==id).forEach(model => {

        html+='<option value="'+model.id+'">'+model.Name+'</option>';
    });
   select.innerHTML=html;
   
   document.getElementById("dealer").value = "";
   document.getElementById("transmission").value = "";
}
   
document.getElementById("brand").value = cur_brand;
if(cur_brand!="") update_model(); 

document.getElementById("model").value = cur_model;
document.getElementById("dealer").value = cur_dealer;
document.getElementById("transmission").value = cur_transmission;


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function pagger(pageindex,totalpage,gap,currentpage)
{
    var div_paggers = document.getElementsByClassName("pagger");
    for (var p = 0; p< div_paggers.length;p++)
    {
        var pager = div_paggers[p];
        if(pageindex - gap > 1)
        {
            var linkFirst = document.createElement("a");
            linkFirst.href = currentpage+"?page=1";
            linkFirst.innerHTML="First";
            pager.appendChild(linkFirst);
        }
        for (var i = pageindex - gap; i <= pageindex -1; i++) {
            if(i>=1)
            {
                var linkNum = document.createElement("a");
                linkNum.href = currentpage+"?page=" + i;
                linkNum.innerHTML= i;
                pager.appendChild(linkNum);
            }
        }
        var span = document.createElement("span");
            span.innerHTML=pageindex;
            pager.appendChild(span);
            
        for (var i = pageindex +1; i <= pageindex + gap; i++) {
            if(i<=totalpage)
            {
                var linkNum = document.createElement("a");
                linkNum.href = currentpage+"?page=" + i;
                linkNum.innerHTML= i;
                pager.appendChild(linkNum);
            }
        }    
        if(pageindex + gap < totalpage)
        {
            var linkFirst = document.createElement("a");
            linkFirst.href = currentpage+"?page=" + totalpage;
            linkFirst.innerHTML="Last";
            pager.appendChild(linkFirst);
        }
    }
}


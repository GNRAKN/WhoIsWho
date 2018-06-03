<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	    <style type="text/css">
	    	#sendEmailBtn {
				float: left;
    			margin-top: 22px;
    		}
    	</style>
    	
    	<tiles:insertDefinition name="layout">
	<tiles:putAttribute name="body">
	
	    <center>
	        <h2>Mail Gönderme </h2>
	        <hr>
	        <form id="sendEmailForm" method="post" action="sendedEmail" enctype="multipart/form-data">
	            <table id="emailFormBeanTable" border="0" width="80%">
	               <tr>
	                    <td>Kime : </td>
	                    <td>${personelEposta} </td>
	               </tr>
	                    
	                <tr>
	                    <td>Konu: </td>
	                    <td><input id="mailSubject" type="text" name="subject" size="65" /></td>
	                </tr>
	                
	                <tr>
	                    <td>Mesaj: </td>
	                    <td><textarea id="mailMessage" cols="50" rows="10" name="message"></textarea></td>
	                </tr>
	                <tr>
	                    <td>Ek: </td>
	                    <td><input id="mailAttachment" type="file" name="attachFileObj" size="60" /></td>
	                </tr>
	                <tr>
	                    <td colspan="2" align="center"><input id="sendEmailBtn" type="submit" value="Gönder" /></td>
	                </tr>
	            </table>
	            <input type="hidden" id="personelEposta" name="personelEposta"
									value="${personelEposta}" />
	        </form>
	    </center>
	    


	</tiles:putAttribute>
</tiles:insertDefinition>
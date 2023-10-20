
<tbody>
<tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
    <td class="content-block" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;" valign="top">
    <h2>Bonjour! </h2>
    <h3>Bonjour
        <%= @user.name %> votre demande d'entretien avec le CV id : <%= @cv.id %> est en cours de validation
    </h3>
    </td>
</tr>
<tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
    <td class="content-block" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;" valign="top">
    <strong>
        Demande d'entretien' de la part de <%= @user.name %> :
    </strong>
    <br/>
    <div>
        <p>Nom et prénom : <%= @user.name %> </p>
        <P>E-mail : <%= @user.email %></p>
        <P>Numéro téléphone : <%= @user.phone %></p>
        <p>Société : <%= @user.societe %></p>
    </div>
    <hr/>
    <strong>
        Date de rendez-vous :
    </strong>
    <br/>
    <div>
        <strong>- <%= @entretien.drdv %> </strong>
        <strong>à <%= @entretien.hrdv %></strong>
    </div>
    </td>
</tr>
<tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
    <td class="content-block" itemprop="handler" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;">
    <a href="https://activsolution.fr/cvtheque/notifications" class="btn-primary" itemprop="url" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; col>
        Allez sur le site
    </a>
    </td>
</tr>

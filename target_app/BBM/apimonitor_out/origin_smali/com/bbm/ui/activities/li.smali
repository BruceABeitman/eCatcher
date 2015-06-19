.class final Lcom/bbm/ui/activities/li;
.super Ljava/lang/Object;
.source "GroupAdminValidatePasswordActivity.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/lh;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/lh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/li;->a:Lcom/bbm/ui/activities/lh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 8

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "groupAdminRequestByPasswordResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bbm/ui/activities/li;->a:Lcom/bbm/ui/activities/lh;

    iget-object v0, v0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "isPasswordAccepted"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/activities/li;->a:Lcom/bbm/ui/activities/lh;

    iget-object v0, v0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->finish()V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/bbm/ui/activities/li;->a:Lcom/bbm/ui/activities/lh;

    iget-object v0, v0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/li;->a:Lcom/bbm/ui/activities/lh;

    iget-object v1, v1, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    const v2, 0x7f0e0439

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    goto :goto_2a
.end method

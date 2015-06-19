.class public final Lcom/bbm/ui/el;
.super Ljava/lang/Object;
.source "ProfileIconHelper.java"
.method public static a(Landroid/app/Activity;ILandroid/net/Uri;)V
.registers 5
new-instance v0, Lcom/cropimage/f;
invoke-direct {v0, p2}, Lcom/cropimage/f;-><init>(Landroid/net/Uri;)V
iput-object p2, v0, Lcom/cropimage/f;->b:Landroid/net/Uri;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/cropimage/f;->c:Z
invoke-virtual {v0, p0}, Lcom/cropimage/f;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public static a(Landroid/app/Activity;ILandroid/net/Uri;Ljava/lang/String;Z)Z
.registers 11
const/4 v0, 0x0
const-string v1, "image/gif"
invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_65
invoke-static {p0, p2}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_26
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v2
const-wide/32 v4, 0x8000
cmp-long v2, v2, v4
if-lez v2, :cond_26
invoke-static {v1}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;)Z
:cond_26
if-nez p4, :cond_37
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v2, "image/gif"
invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/cu;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:goto_35
const/4 v0, 0x1
:goto_36
return v0
:cond_37
new-instance v2, Lcom/bbm/ui/b/o;
invoke-direct {v2, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v3, 0x7f0e05e3
invoke-virtual {v2, v3}, Lcom/bbm/ui/b/o;->e(I)V
const v3, 0x7f0e0171
invoke-virtual {v2, v3}, Lcom/bbm/ui/b/o;->b(I)V
const v3, 0x7f0e0553
invoke-virtual {v2, v3}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v3, Lcom/bbm/ui/em;
invoke-direct {v3, v1, v2, p0}, Lcom/bbm/ui/em;-><init>(Ljava/lang/String;Lcom/bbm/ui/b/o;Landroid/app/Activity;)V
invoke-virtual {v2, v3}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/bbm/ui/en;
invoke-direct {v1, v2, p0}, Lcom/bbm/ui/en;-><init>(Lcom/bbm/ui/b/o;Landroid/app/Activity;)V
invoke-virtual {v2, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2, v0}, Lcom/bbm/ui/b/o;->setCancelable(Z)V
invoke-virtual {v2}, Lcom/bbm/ui/b/o;->show()V
goto :goto_35
:cond_65
invoke-static {p0, p1, p2}, Lcom/bbm/ui/el;->a(Landroid/app/Activity;ILandroid/net/Uri;)V
goto :goto_36
.end method
.method public static a(Landroid/app/Activity;ILandroid/net/Uri;Z)Z
.registers 5
invoke-static {p0, p2}, Lcom/bbm/util/b/h;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, p2, v0, p3}, Lcom/bbm/ui/el;->a(Landroid/app/Activity;ILandroid/net/Uri;Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
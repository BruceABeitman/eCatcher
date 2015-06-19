.class final Lcom/instagram/android/maps/t;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:[Ljava/lang/CharSequence;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/maps/t;->d:Lcom/instagram/android/maps/PhotoMapsActivity;
iput-object p2, p0, Lcom/instagram/android/maps/t;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/android/maps/t;->b:[Ljava/lang/CharSequence;
iput-object p4, p0, Lcom/instagram/android/maps/t;->c:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/t; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/maps/t;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/maps/t;->b:[Ljava/lang/CharSequence;
aget-object v1, v1, p2
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_42
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-nez v0, :cond_2d
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->f()Z
move-result v0
if-eqz v0, :cond_2d
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/t;->d:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->f()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/List;)V
:cond_2d
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v1
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-nez v0, :cond_40
const/4 v0, 0x1
:goto_3c
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Z)V
:goto_3f
:cond_3f
const-string v1, " - Lcom/instagram/android/maps/t; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_40
const/4 v0, 0x0
goto :goto_3c
:cond_42
iget-object v0, p0, Lcom/instagram/android/maps/t;->c:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/maps/t;->b:[Ljava/lang/CharSequence;
aget-object v1, v1, p2
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3f
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/instagram/android/maps/t;->d:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->m(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5d
:cond_5d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_83
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/b/f;
iget-object v3, p0, Lcom/instagram/android/maps/t;->d:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v3
invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/instagram/android/maps/ui/i;->a(Lcom/instagram/android/maps/b/h;)Z
move-result v3
if-eqz v3, :cond_5d
iget-object v3, p0, Lcom/instagram/android/maps/t;->d:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
goto :goto_5d
:cond_83
iget-object v0, p0, Lcom/instagram/android/maps/t;->d:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V
iget-object v0, p0, Lcom/instagram/android/maps/t;->d:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->c()Landroid/support/v4/app/s;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/android/maps/d/a;->a(Ljava/util/List;Landroid/support/v4/app/s;)V
goto :goto_3f
.end method
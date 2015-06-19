.class final Lcom/bbm/b/j;
.super Ljava/lang/Object;
.source "AdUtils.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.field final synthetic b:Lcom/bbm/b/a;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/b/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/b/j;->a:Lcom/bbm/ui/activities/MainActivity;
iput-object p2, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 8
iget-object v0, p0, Lcom/bbm/b/j;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
packed-switch v0, :pswitch_data_6e
:goto_f
return-void
:pswitch_10
iget-object v0, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v0, v0, Lcom/bbm/b/a;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v1, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-boolean v2, v2, Lcom/bbm/b/a;->n:Z
sget-object v3, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;
iget-object v4, p0, Lcom/bbm/b/j;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1, v2, v3, v4}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/bbm/b/aj;Landroid/app/Activity;)V
goto :goto_f
:pswitch_24
iget-object v0, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v0, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/b/j;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1}, Lcom/bbm/b/e;->a(Ljava/lang/String;Landroid/app/Activity;)V
goto :goto_f
:pswitch_2e
iget-object v0, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v0, v0, Lcom/bbm/b/a;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v1, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;
sget-object v2, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;
iget-object v3, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-boolean v3, v3, Lcom/bbm/b/a;->n:Z
invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V
goto :goto_f
:pswitch_40
iget-object v0, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v0, v0, Lcom/bbm/b/a;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v1, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;
sget-object v2, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;
iget-object v3, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-boolean v3, v3, Lcom/bbm/b/a;->n:Z
invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V
iget-object v0, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v0, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/b/e;->a(Ljava/lang/String;)Z
goto :goto_f
:pswitch_59
iget-object v0, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v0, v0, Lcom/bbm/b/a;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-object v1, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/b/j;->b:Lcom/bbm/b/a;
iget-boolean v2, v2, Lcom/bbm/b/a;->n:Z
sget-object v3, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;
iget-object v4, p0, Lcom/bbm/b/j;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1, v2, v3, v4}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/bbm/b/aj;Landroid/app/Activity;)V
goto :goto_f
nop
:pswitch_data_6e
.packed-switch 0x7f0a002b
:pswitch_40
:pswitch_59
:pswitch_10
:pswitch_2e
:pswitch_24
.end packed-switch
.end method
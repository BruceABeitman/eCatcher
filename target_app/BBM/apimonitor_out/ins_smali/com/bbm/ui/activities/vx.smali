.class final Lcom/bbm/ui/activities/vx;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/vx;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
const v1, 0x7f0a007b
if-eq v0, v1, :cond_11
const v1, 0x7f0a007c
if-eq v0, v1, :cond_11
const v1, 0x7f0a007e
if-ne v0, v1, :cond_1b
:cond_11
iget-object v1, p0, Lcom/bbm/ui/activities/vx;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v1
const/4 v2, 0x7
invoke-virtual {v1, v2}, Lcom/bbm/ui/MainTabBarView;->setLeftTabVisibility(I)V
:cond_1b
iget-object v1, p0, Lcom/bbm/ui/activities/vx;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
return-void
.end method
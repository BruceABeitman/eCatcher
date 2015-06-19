.class public Lco/vine/android/widget/tabs/TabInfo;
.super Ljava/lang/Object;
.source "TabInfo.java"
.field public final bundle:Landroid/os/Bundle;
.field public final clss:Ljava/lang/Class;
.field private mRef:Ljava/lang/ref/WeakReference;
.field protected mTag:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/widget/tabs/TabInfo;->clss:Ljava/lang/Class;
iput-object p2, p0, Lco/vine/android/widget/tabs/TabInfo;->bundle:Landroid/os/Bundle;
iput-object p3, p0, Lco/vine/android/widget/tabs/TabInfo;->mTag:Ljava/lang/String;
return-void
.end method
.method public fragment()Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/tabs/TabInfo;->mRef:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/widget/tabs/TabInfo;->mRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public getTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/tabs/TabInfo;->mTag:Ljava/lang/String;
return-object v0
.end method
.method public setFragment(Landroid/support/v4/app/Fragment;)V
.registers 3
if-eqz p1, :cond_a
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/widget/tabs/TabInfo;->mRef:Ljava/lang/ref/WeakReference;
:goto_9
return-void
:cond_a
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/widget/tabs/TabInfo;->mRef:Ljava/lang/ref/WeakReference;
goto :goto_9
.end method
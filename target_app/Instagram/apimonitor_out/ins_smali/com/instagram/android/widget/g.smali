.class final Lcom/instagram/android/widget/g;
.super Ljava/lang/Object;
.source "FindPeopleButtonsHelper.java"
.implements Lcom/facebook/b/e;
.field final synthetic a:Lcom/instagram/android/widget/e;
.method private constructor <init>(Lcom/instagram/android/widget/e;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/g;->a:Lcom/instagram/android/widget/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/widget/e;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/widget/g;-><init>(Lcom/instagram/android/widget/e;)V
return-void
.end method
.method public final a()V
.registers 1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/instagram/share/b/a;->b()V
iget-object v0, p0, Lcom/instagram/android/widget/g;->a:Lcom/instagram/android/widget/e;
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/widget/e;->a(Lcom/instagram/android/widget/e;Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/facebook/b/a;)V
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
return-void
.end method
.method public final a(Lcom/facebook/b/i;)V
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
return-void
.end method
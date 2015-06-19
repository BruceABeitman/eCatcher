.class final Lcom/instagram/android/widget/c;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/widget/b;
.method constructor <init>(Lcom/instagram/android/widget/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/c;->a:Lcom/instagram/android/widget/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
new-instance v0, Lcom/instagram/common/a/a/h;
invoke-direct {v0}, Lcom/instagram/common/a/a/h;-><init>()V
new-instance v1, Lcom/instagram/android/l/b/a;
invoke-direct {v1}, Lcom/instagram/android/l/b/a;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/h;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.class public Lcom/igexin/push/core/b/a;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Landroid/content/ServiceConnection;
.field private c:Lcom/igexin/sdk/aidl/ICACallback;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Landroid/content/ServiceConnection;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/b/a;->b:Landroid/content/ServiceConnection;
return-object v0
.end method
.method public a(Landroid/content/ServiceConnection;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/b/a;->b:Landroid/content/ServiceConnection;
return-void
.end method
.method public a(Lcom/igexin/sdk/aidl/ICACallback;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/b/a;->c:Lcom/igexin/sdk/aidl/ICACallback;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/b/a;->a:Ljava/lang/String;
return-void
.end method
.method public b()Lcom/igexin/sdk/aidl/ICACallback;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/b/a;->c:Lcom/igexin/sdk/aidl/ICACallback;
return-object v0
.end method
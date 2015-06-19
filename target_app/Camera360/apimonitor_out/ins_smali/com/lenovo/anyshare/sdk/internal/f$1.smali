.class  Lcom/lenovo/anyshare/sdk/internal/f$1;
.super Ljava/lang/Object;
.source "ShareChannel.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/lenovo/anyshare/sdk/internal/f;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/f;Ljava/util/List;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f$1;->c:Lcom/lenovo/anyshare/sdk/internal/f;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/f$1;->a:Ljava/util/List;
iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/f$1;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$1;->c:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f$1;->a:Ljava/util/List;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f$1;->b:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Ljava/util/List;Ljava/lang/String;)V
return-void
.end method
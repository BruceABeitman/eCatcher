.class public Lcom/lenovo/anyshare/sdk/internal/bb$b;
.super Ljava/lang/Object;
.source "RootUtils.java"
.field public a:Ljava/util/List;
.field public b:Ljava/lang/String;
.field public c:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$b;->a:Ljava/util/List;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$b;->c:Z
return-void
.end method
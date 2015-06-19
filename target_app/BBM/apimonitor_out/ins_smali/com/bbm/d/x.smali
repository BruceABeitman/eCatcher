.class final Lcom/bbm/d/x;
.super Ljava/lang/Object;
.source "BbmdsModel.java"
.field final a:Lcom/bbm/d/y;
.field  b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/d/a;
.method private constructor <init>(Lcom/bbm/d/a;)V
.registers 4
iput-object p1, p0, Lcom/bbm/d/x;->c:Lcom/bbm/d/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/d/y;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/bbm/d/y;-><init>(Lcom/bbm/d/x;B)V
iput-object v0, p0, Lcom/bbm/d/x;->a:Lcom/bbm/d/y;
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/d/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/d/x;-><init>(Lcom/bbm/d/a;)V
return-void
.end method
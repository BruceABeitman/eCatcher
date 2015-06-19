.class public final Lcom/bbm/l/d/b/m;
.super Ljava/lang/Exception;
.source "IabException.java"
.field  a:Lcom/bbm/l/d/b/u;
.method public constructor <init>(ILjava/lang/String;)V
.registers 4
new-instance v0, Lcom/bbm/l/d/b/u;
invoke-direct {v0, p1, p2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-direct {p0, v0}, Lcom/bbm/l/d/b/m;-><init>(Lcom/bbm/l/d/b/u;)V
return-void
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
.registers 5
new-instance v0, Lcom/bbm/l/d/b/u;
invoke-direct {v0, p1, p2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-direct {p0, v0, p3}, Lcom/bbm/l/d/b/m;-><init>(Lcom/bbm/l/d/b/u;Ljava/lang/Exception;)V
return-void
.end method
.method private constructor <init>(Lcom/bbm/l/d/b/u;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/l/d/b/m;-><init>(Lcom/bbm/l/d/b/u;Ljava/lang/Exception;)V
return-void
.end method
.method private constructor <init>(Lcom/bbm/l/d/b/u;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p1, Lcom/bbm/l/d/b/u;->b:Ljava/lang/String;
invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
iput-object p1, p0, Lcom/bbm/l/d/b/m;->a:Lcom/bbm/l/d/b/u;
return-void
.end method
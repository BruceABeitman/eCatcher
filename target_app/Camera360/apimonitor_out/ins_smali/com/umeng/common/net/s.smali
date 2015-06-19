.class public abstract Lcom/umeng/common/net/s;
.super Ljava/lang/Object;
.source "URequest.java"
.field protected static b:Ljava/lang/String;
.field protected static c:Ljava/lang/String;
.field protected d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "POST"
sput-object v0, Lcom/umeng/common/net/s;->b:Ljava/lang/String;
const-string/jumbo v0, "GET"
sput-object v0, Lcom/umeng/common/net/s;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/umeng/common/net/s;->d:Ljava/lang/String;
return-void
.end method
.method public abstract a()Lorg/json/JSONObject;
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/umeng/common/net/s;->d:Ljava/lang/String;
return-void
.end method
.method public abstract b()Ljava/lang/String;
.end method
.method protected c()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/umeng/common/net/s;->b:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/umeng/common/net/s;->d:Ljava/lang/String;
return-object v0
.end method
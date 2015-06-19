.class final Lcom/facebook/s;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Ljava/io/Serializable;
.field final a:I
.field final b:Lcom/facebook/a;
.field final c:Ljava/lang/String;
.method private constructor <init>(ILcom/facebook/a;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/s;->b:Lcom/facebook/a;
iput-object p3, p0, Lcom/facebook/s;->c:Ljava/lang/String;
iput p1, p0, Lcom/facebook/s;->a:I
return-void
.end method
.method static a(Lcom/facebook/a;)Lcom/facebook/s;
.registers 4
new-instance v0, Lcom/facebook/s;
sget v1, Lcom/facebook/t;->a:I
const/4 v2, 0x0
invoke-direct {v0, v1, p0, v2}, Lcom/facebook/s;-><init>(ILcom/facebook/a;Ljava/lang/String;)V
return-object v0
.end method
.method static a(Ljava/lang/String;)Lcom/facebook/s;
.registers 4
new-instance v0, Lcom/facebook/s;
sget v1, Lcom/facebook/t;->b:I
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0}, Lcom/facebook/s;-><init>(ILcom/facebook/a;Ljava/lang/String;)V
return-object v0
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;
.registers 5
if-eqz p1, :cond_19
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_19
new-instance v0, Lcom/facebook/s;
sget v1, Lcom/facebook/t;->c:I
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0}, Lcom/facebook/s;-><init>(ILcom/facebook/a;Ljava/lang/String;)V
return-object v0
.end method
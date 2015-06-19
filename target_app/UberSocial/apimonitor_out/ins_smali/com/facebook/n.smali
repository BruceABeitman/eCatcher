.class  Lcom/facebook/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final d:J = 0x1L
.field final a:Lcom/facebook/o;
.field final b:Lcom/facebook/a;
.field final c:Ljava/lang/String;
.method private constructor <init>(Lcom/facebook/o;Lcom/facebook/a;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/n;->b:Lcom/facebook/a;
iput-object p3, p0, Lcom/facebook/n;->c:Ljava/lang/String;
iput-object p1, p0, Lcom/facebook/n;->a:Lcom/facebook/o;
return-void
.end method
.method static a(Lcom/facebook/a;)Lcom/facebook/n;
.registers 4
new-instance v0, Lcom/facebook/n;
sget-object v1, Lcom/facebook/o;->a:Lcom/facebook/o;
const/4 v2, 0x0
invoke-direct {v0, v1, p0, v2}, Lcom/facebook/n;-><init>(Lcom/facebook/o;Lcom/facebook/a;Ljava/lang/String;)V
return-object v0
.end method
.method static a(Ljava/lang/String;)Lcom/facebook/n;
.registers 4
new-instance v0, Lcom/facebook/n;
sget-object v1, Lcom/facebook/o;->b:Lcom/facebook/o;
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0}, Lcom/facebook/n;-><init>(Lcom/facebook/o;Lcom/facebook/a;Ljava/lang/String;)V
return-object v0
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;
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
new-instance v0, Lcom/facebook/n;
sget-object v1, Lcom/facebook/o;->c:Lcom/facebook/o;
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0}, Lcom/facebook/n;-><init>(Lcom/facebook/o;Lcom/facebook/a;Ljava/lang/String;)V
return-object v0
.end method
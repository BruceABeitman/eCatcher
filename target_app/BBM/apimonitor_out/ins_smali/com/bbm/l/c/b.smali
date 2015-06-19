.class public Lcom/bbm/l/c/b;
.super Lcom/bbm/l/c/a;
.source "AsyncStickerPackDetailsFetcher.java"
.field private static final b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/bbm/l/c/b;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/bbm/l/c/b;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/l/c/a;-><init>()V
return-void
.end method
.method public static a(Lcom/bbm/util/bo;Ljava/lang/String;ZLcom/bbm/l/c/d;)V
.registers 7
:try_start_0
new-instance v0, Ljava/net/URL;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/bbm/l/a/a;->b()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Lcom/bbm/l/c/b;->a(Ljava/lang/StringBuilder;)V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_1d
.catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1d} :catch_26
new-instance v1, Lcom/bbm/l/c/c;
invoke-direct {v1, p3, p2, p0}, Lcom/bbm/l/c/c;-><init>(Lcom/bbm/l/c/d;ZLcom/bbm/util/bo;)V
invoke-virtual {p0, v0, v1}, Lcom/bbm/util/bo;->a(Ljava/net/URL;Lcom/bbm/util/bu;)V
:goto_25
:cond_25
return-void
:catch_26
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
if-eqz p3, :cond_25
const/4 v0, 0x1
invoke-interface {p3, v0}, Lcom/bbm/l/c/d;->a(I)V
goto :goto_25
.end method
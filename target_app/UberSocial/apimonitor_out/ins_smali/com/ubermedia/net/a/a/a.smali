.class public Lcom/ubermedia/net/a/a/a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field public static final c:I = 0x2
.field public static final d:I = 0x3
.field public static final e:I = 0x4
.field public static final f:I = 0x5
.field public static final g:I = 0x6
.field public static final h:I = 0x7
.field public static final i:I = 0x8
.field public static final j:I = 0x9
.field public static final k:I = 0xa
.field public static final l:I = 0xb
.field public static final m:I = 0xc
.field public static final n:I = 0xd
.field public static final o:I = 0xe
.field public static final p:I = 0xf
.field public static final r:Ljava/lang/String; = "Connection failed. Please try again."
.field private static final s:J = 0x1L
.field  q:I
.method public constructor <init>(Ljava/lang/Exception;)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
const/4 v0, 0x0
iput v0, p0, Lcom/ubermedia/net/a/a/a;->q:I
instance-of v0, p1, Lcom/ubermedia/net/a/a/a;
if-eqz v0, :cond_12
check-cast p1, Lcom/ubermedia/net/a/a/a;
invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
iput v0, p0, Lcom/ubermedia/net/a/a/a;->q:I
:cond_12
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput v0, p0, Lcom/ubermedia/net/a/a/a;->q:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 6
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput v0, p0, Lcom/ubermedia/net/a/a/a;->q:I
const/4 v0, 0x3
if-ne p2, v0, :cond_10
const-string v0, "ExceptionLogger"
const-string v1, "404 + not found exception"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_10
const/4 v0, 0x4
if-ne p2, v0, :cond_2b
const-string v0, "ExceptionLogger"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Parser Error"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_2b
iput p2, p0, Lcom/ubermedia/net/a/a/a;->q:I
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/ubermedia/net/a/a/a;->q:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/ubermedia/net/a/a/a;->getMessage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
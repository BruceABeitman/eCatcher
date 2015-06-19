.class public Lcom/instagram/quicksand/a;
.super Ljava/lang/Object;
.source "QuickSandSolverRunnable.java"
.implements Ljava/lang/Runnable;
.field static final synthetic a:Z
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/Integer;
.field private d:Ljava/lang/Integer;
.field private e:Ljava/lang/Integer;
.field private f:Ljava/lang/Integer;
.field private g:Ljava/util/List;
.field private h:Lcom/instagram/quicksand/QuickSandSolverBridge;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/quicksand/a;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/instagram/quicksand/a;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/quicksand/QuickSandSolverBridge;
invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/instagram/quicksand/QuickSandSolverBridge;-><init>(II)V
iput-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;
iput-object p1, p0, Lcom/instagram/quicksand/a;->d:Ljava/lang/Integer;
iput-object p2, p0, Lcom/instagram/quicksand/a;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/quicksand/a;->e:Ljava/lang/Integer;
iput-object p3, p0, Lcom/instagram/quicksand/a;->f:Ljava/lang/Integer;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
return-void
.end method
.method private static a(Ljava/util/List;)Ljava/lang/String;
.registers 5
:try_start_0
const-string v0, "-"
invoke-static {v0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/String;)Lcom/instagram/common/i/a/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
const-string v1, "SHA-256"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
new-instance v1, Ljava/math/BigInteger;
const/4 v2, 0x1
invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "%0"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
array-length v0, v0
shl-int/lit8 v0, v0, 0x1
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "x"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-static {v0, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_42
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_42} :catch_44
move-result-object v0
:goto_43
return-object v0
:catch_44
move-exception v0
new-instance v0, Ljava/lang/String;
invoke-direct {v0}, Ljava/lang/String;-><init>()V
goto :goto_43
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;
invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->a()V
return-void
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
iget-object v1, p0, Lcom/instagram/quicksand/a;->d:Ljava/lang/Integer;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final declared-synchronized c()Ljava/util/List;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public run()V
.registers 5
:goto_0
iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Lcom/instagram/quicksand/a;->d:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ge v0, v1, :cond_94
iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;
invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->b()Z
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_2e
iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;
invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->c()V
sget-boolean v0, Lcom/instagram/quicksand/a;->a:Z
if-nez v0, :cond_99
iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;
invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->b()Z
move-result v0
if-eqz v0, :cond_99
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_2e
iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;
iget-object v1, p0, Lcom/instagram/quicksand/a;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/quicksand/a;->e:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/quicksand/QuickSandSolverBridge;->a(Ljava/lang/String;I)[I
move-result-object v1
array-length v0, v1
iget-object v2, p0, Lcom/instagram/quicksand/a;->f:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
if-ne v0, v2, :cond_83
new-instance v2, Ljava/util/ArrayList;
iget-object v0, p0, Lcom/instagram/quicksand/a;->f:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_51
array-length v3, v1
if-ge v0, v3, :cond_60
aget v3, v1, v0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_51
:cond_60
invoke-static {v2}, Lcom/instagram/quicksand/a;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/quicksand/a;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;
monitor-enter v1
:try_start_69
iget-object v0, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
monitor-exit v1
:goto_6f
:try_end_6f
.catchall {:try_start_69 .. :try_end_6f} :catchall_80
iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
goto :goto_0
:catchall_80
move-exception v0
monitor-exit v1
throw v0
:cond_83
iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;
goto :goto_6f
:cond_94
iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;
invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->c()V
:cond_99
return-void
.end method
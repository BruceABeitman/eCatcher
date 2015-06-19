.class public Lcom/instagram/api/g/g;
.super Ljava/lang/Object;
.source "NetworkSpeedEstimator.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Lcom/instagram/api/g/g;
.field private final c:[Lcom/instagram/api/g/h;
.field private d:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/api/g/g;
sput-object v0, Lcom/instagram/api/g/g;->a:Ljava/lang/Class;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x7
new-array v0, v0, [Lcom/instagram/api/g/h;
iput-object v0, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/api/g/g;->d:I
return-void
.end method
.method public static declared-synchronized a()Lcom/instagram/api/g/g;
.registers 2
const-class v1, Lcom/instagram/api/g/g;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/api/g/g;->b:Lcom/instagram/api/g/g;
if-nez v0, :cond_e
new-instance v0, Lcom/instagram/api/g/g;
invoke-direct {v0}, Lcom/instagram/api/g/g;-><init>()V
sput-object v0, Lcom/instagram/api/g/g;->b:Lcom/instagram/api/g/g;
:cond_e
sget-object v0, Lcom/instagram/api/g/g;->b:Lcom/instagram/api/g/g;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static a(Ljava/lang/String;)Z
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
goto :goto_3
.end method
.method private declared-synchronized b()I
.registers 10
const/4 v3, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
monitor-enter p0
move v6, v0
move v2, v1
move-object v5, v3
:try_start_7
:goto_7
iget-object v4, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;
array-length v4, v4
if-ge v6, v4, :cond_47
iget-object v4, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;
aget-object v4, v4, v6
if-eqz v4, :cond_74
add-int/lit8 v0, v0, 0x1
invoke-static {v4}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
move-result v7
invoke-static {v4}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F
move-result v8
mul-float/2addr v7, v8
add-float/2addr v2, v7
invoke-static {v4}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F
move-result v7
add-float/2addr v1, v7
if-eqz v5, :cond_31
invoke-static {v4}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
move-result v7
invoke-static {v5}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
move-result v8
cmpl-float v7, v7, v8
if-lez v7, :cond_32
:cond_31
move-object v5, v4
:cond_32
if-eqz v3, :cond_40
invoke-static {v4}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
move-result v7
invoke-static {v3}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
:try_end_3b
.catchall {:try_start_7 .. :try_end_3b} :catchall_71
move-result v8
cmpg-float v7, v7, v8
if-gez v7, :cond_74
:cond_40
move-object v3, v4
move-object v4, v5
:goto_42
add-int/lit8 v5, v6, 0x1
move v6, v5
move-object v5, v4
goto :goto_7
:cond_47
if-nez v0, :cond_4c
const/4 v0, -0x1
:goto_4a
monitor-exit p0
return v0
:cond_4c
const/4 v4, 0x3
if-lt v0, v4, :cond_6d
:try_start_4f
invoke-static {v5}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
move-result v0
invoke-static {v5}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F
move-result v4
mul-float/2addr v0, v4
invoke-static {v3}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
move-result v4
invoke-static {v3}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F
move-result v6
mul-float/2addr v4, v6
add-float/2addr v0, v4
sub-float/2addr v2, v0
invoke-static {v5}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F
move-result v0
invoke-static {v3}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F
:try_end_6a
.catchall {:try_start_4f .. :try_end_6a} :catchall_71
move-result v3
add-float/2addr v0, v3
sub-float/2addr v1, v0
:cond_6d
div-float v0, v2, v1
float-to-int v0, v0
goto :goto_4a
:catchall_71
move-exception v0
monitor-exit p0
throw v0
:cond_74
move-object v4, v5
goto :goto_42
.end method
.method public final declared-synchronized a(Lcom/instagram/api/g/i;)V
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Lcom/instagram/api/g/i;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/api/g/g;->a(Ljava/lang/String;)Z
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_57
move-result v0
if-nez v0, :cond_d
:goto_b
monitor-exit p0
return-void
:cond_d
:try_start_d
iget v0, p0, Lcom/instagram/api/g/g;->d:I
add-int/lit8 v0, v0, 0x1
rem-int/lit8 v0, v0, 0x7
iput v0, p0, Lcom/instagram/api/g/g;->d:I
iget-object v0, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;
iget v1, p0, Lcom/instagram/api/g/g;->d:I
aget-object v0, v0, v1
if-nez v0, :cond_29
new-instance v0, Lcom/instagram/api/g/h;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/instagram/api/g/h;-><init>(B)V
iget-object v1, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;
iget v2, p0, Lcom/instagram/api/g/g;->d:I
aput-object v0, v1, v2
:cond_29
invoke-virtual {p1}, Lcom/instagram/api/g/i;->j()J
move-result-wide v1
long-to-float v1, v1
const/high16 v2, 0x4480
div-float/2addr v1, v2
invoke-virtual {p1}, Lcom/instagram/api/g/i;->n()J
move-result-wide v2
long-to-float v2, v2
const/high16 v3, 0x447a
div-float/2addr v2, v3
invoke-static {v0, v1}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;F)F
div-float/2addr v1, v2
const/high16 v2, 0x4620
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v1
invoke-static {v0, v1}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;F)F
sget-object v0, Lcom/instagram/api/g/g;->a:Ljava/lang/Class;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "latest speed "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/api/g/g;->b()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:try_end_56
.catchall {:try_start_d .. :try_end_56} :catchall_57
goto :goto_b
:catchall_57
move-exception v0
monitor-exit p0
throw v0
.end method
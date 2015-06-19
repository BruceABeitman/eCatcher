.class public final Lcom/tencent/map/b/a;
.super Ljava/lang/Object;
.field private static a:Lcom/tencent/map/b/a;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/map/b/a;->a:Lcom/tencent/map/b/a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/tencent/map/b/a;Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
move v1, v0
:goto_6
if-ge v0, v2, :cond_14
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/tencent/map/b/s;->a(C)I
move-result v3
add-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_14
shl-int/lit8 v0, v2, 0x7
add-int/2addr v0, v2
xor-int/2addr v0, v1
return v0
.end method
.method public static declared-synchronized a()Lcom/tencent/map/b/a;
.registers 2
const-class v1, Lcom/tencent/map/b/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/map/b/a;->a:Lcom/tencent/map/b/a;
if-nez v0, :cond_e
new-instance v0, Lcom/tencent/map/b/a;
invoke-direct {v0}, Lcom/tencent/map/b/a;-><init>()V
sput-object v0, Lcom/tencent/map/b/a;->a:Lcom/tencent/map/b/a;
:cond_e
sget-object v0, Lcom/tencent/map/b/a;->a:Lcom/tencent/map/b/a;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 11
const/16 v7, 0x1b
const/4 v1, 0x1
const/4 v0, 0x0
invoke-static {p1}, Lcom/tencent/map/b/s;->a(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
invoke-static {p2}, Lcom/tencent/map/b/s;->b(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_a
new-instance v2, Lcom/tencent/map/b/a$1;
invoke-direct {v2, p0, v0}, Lcom/tencent/map/b/a$1;-><init>(Lcom/tencent/map/b/a;B)V
invoke-virtual {v2, p1, p2}, Lcom/tencent/map/b/a$1;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_a
move v2, v0
move v3, v0
:goto_1e
if-ge v2, v7, :cond_37
shr-int/lit8 v4, v3, 0x8
and-int/lit16 v4, v4, 0xff
sget-object v5, Lcom/tencent/map/b/s;->b:[I
invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v6}, Lcom/tencent/map/b/s;->a(C)I
move-result v6
xor-int/2addr v3, v6
and-int/lit16 v3, v3, 0xff
aget v3, v5, v3
xor-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_1e
:cond_37
and-int/lit8 v2, v3, 0x1f
invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C
move-result v4
sget-object v5, Lcom/tencent/map/b/s;->a:Ljava/lang/String;
invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v4, v2, :cond_4a
move v2, v0
:goto_46
if-eqz v2, :cond_a
move v0, v1
goto :goto_a
:cond_4a
shr-int/lit8 v2, v3, 0x5
and-int/lit8 v2, v2, 0x1f
const/16 v3, 0x1c
invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C
move-result v3
sget-object v4, Lcom/tencent/map/b/s;->a:Ljava/lang/String;
invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v3, v2, :cond_5e
move v2, v0
goto :goto_46
:cond_5e
move v2, v1
goto :goto_46
.end method
.class public final enum Lcom/userzoom/f;
.super Ljava/lang/Enum;
.field public static final enum a:Lcom/userzoom/f;
.field public static final enum b:Lcom/userzoom/f;
.field public static final enum c:Lcom/userzoom/f;
.field public static final enum d:Lcom/userzoom/f;
.field public static final enum e:Lcom/userzoom/f;
.field public static final enum f:Lcom/userzoom/f;
.field public static final enum g:Lcom/userzoom/f;
.field private static final synthetic j:[Lcom/userzoom/f;
.field private final h:Z
.field private final i:I
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x0
const/4 v3, 0x1
new-instance v0, Lcom/userzoom/f;
const-string v1, "AUTO_CLOSE_TARGET"
invoke-direct {v0, v1, v4, v3}, Lcom/userzoom/f;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/userzoom/f;->a:Lcom/userzoom/f;
new-instance v0, Lcom/userzoom/f;
const-string v1, "AUTO_CLOSE_JSON_CONTENT"
invoke-direct {v0, v1, v3, v3}, Lcom/userzoom/f;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/userzoom/f;->b:Lcom/userzoom/f;
new-instance v0, Lcom/userzoom/f;
const-string v1, "QUOTE_FIELD_NAMES"
invoke-direct {v0, v1, v5, v3}, Lcom/userzoom/f;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/userzoom/f;->c:Lcom/userzoom/f;
new-instance v0, Lcom/userzoom/f;
const-string v1, "QUOTE_NON_NUMERIC_NUMBERS"
invoke-direct {v0, v1, v6, v3}, Lcom/userzoom/f;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/userzoom/f;->d:Lcom/userzoom/f;
new-instance v0, Lcom/userzoom/f;
const-string v1, "WRITE_NUMBERS_AS_STRINGS"
invoke-direct {v0, v1, v7, v4}, Lcom/userzoom/f;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/userzoom/f;->e:Lcom/userzoom/f;
new-instance v0, Lcom/userzoom/f;
const-string v1, "FLUSH_PASSED_TO_STREAM"
const/4 v2, 0x5
invoke-direct {v0, v1, v2, v3}, Lcom/userzoom/f;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/userzoom/f;->f:Lcom/userzoom/f;
new-instance v0, Lcom/userzoom/f;
const-string v1, "ESCAPE_NON_ASCII"
const/4 v2, 0x6
invoke-direct {v0, v1, v2, v4}, Lcom/userzoom/f;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/userzoom/f;->g:Lcom/userzoom/f;
const/4 v0, 0x7
new-array v0, v0, [Lcom/userzoom/f;
sget-object v1, Lcom/userzoom/f;->a:Lcom/userzoom/f;
aput-object v1, v0, v4
sget-object v1, Lcom/userzoom/f;->b:Lcom/userzoom/f;
aput-object v1, v0, v3
sget-object v1, Lcom/userzoom/f;->c:Lcom/userzoom/f;
aput-object v1, v0, v5
sget-object v1, Lcom/userzoom/f;->d:Lcom/userzoom/f;
aput-object v1, v0, v6
sget-object v1, Lcom/userzoom/f;->e:Lcom/userzoom/f;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/userzoom/f;->f:Lcom/userzoom/f;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/userzoom/f;->g:Lcom/userzoom/f;
aput-object v2, v0, v1
sput-object v0, Lcom/userzoom/f;->j:[Lcom/userzoom/f;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IZ)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/userzoom/f;->ordinal()I
move-result v1
shl-int/2addr v0, v1
iput v0, p0, Lcom/userzoom/f;->i:I
iput-boolean p3, p0, Lcom/userzoom/f;->h:Z
return-void
.end method
.method public static a()I
.registers 6
const/4 v1, 0x0
sget-object v0, Lcom/userzoom/f;->j:[Lcom/userzoom/f;
invoke-virtual {v0}, [Lcom/userzoom/f;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/userzoom/f;
array-length v3, v0
move v2, v1
:goto_b
if-ge v2, v3, :cond_19
aget-object v4, v0, v2
iget-boolean v5, v4, Lcom/userzoom/f;->h:Z
if-eqz v5, :cond_16
iget v4, v4, Lcom/userzoom/f;->i:I
or-int/2addr v1, v4
:cond_16
add-int/lit8 v2, v2, 0x1
goto :goto_b
:cond_19
return v1
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/userzoom/f;->i:I
return v0
.end method
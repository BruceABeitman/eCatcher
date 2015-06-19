.class public final enum Lcom/userzoom/c;
.super Ljava/lang/Enum;
.field private static enum a:Lcom/userzoom/c;
.field private static enum b:Lcom/userzoom/c;
.field private static final synthetic d:[Lcom/userzoom/c;
.field private final c:Z
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/userzoom/c;
const-string v1, "INTERN_FIELD_NAMES"
invoke-direct {v0, v1, v2}, Lcom/userzoom/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/userzoom/c;->a:Lcom/userzoom/c;
new-instance v0, Lcom/userzoom/c;
const-string v1, "CANONICALIZE_FIELD_NAMES"
invoke-direct {v0, v1, v3}, Lcom/userzoom/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/userzoom/c;->b:Lcom/userzoom/c;
const/4 v0, 0x2
new-array v0, v0, [Lcom/userzoom/c;
sget-object v1, Lcom/userzoom/c;->a:Lcom/userzoom/c;
aput-object v1, v0, v2
sget-object v1, Lcom/userzoom/c;->b:Lcom/userzoom/c;
aput-object v1, v0, v3
sput-object v0, Lcom/userzoom/c;->d:[Lcom/userzoom/c;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/userzoom/c;->c:Z
return-void
.end method
.method public static a()I
.registers 6
const/4 v1, 0x0
sget-object v0, Lcom/userzoom/c;->d:[Lcom/userzoom/c;
invoke-virtual {v0}, [Lcom/userzoom/c;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/userzoom/c;
array-length v3, v0
move v2, v1
:goto_b
if-ge v2, v3, :cond_1e
aget-object v4, v0, v2
iget-boolean v5, v4, Lcom/userzoom/c;->c:Z
if-eqz v5, :cond_1b
const/4 v5, 0x1
invoke-virtual {v4}, Lcom/userzoom/c;->ordinal()I
move-result v4
shl-int v4, v5, v4
or-int/2addr v1, v4
:cond_1b
add-int/lit8 v2, v2, 0x1
goto :goto_b
:cond_1e
return v1
.end method
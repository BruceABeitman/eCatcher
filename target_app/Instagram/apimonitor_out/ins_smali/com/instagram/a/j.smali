.class public final enum Lcom/instagram/a/j;
.super Ljava/lang/Enum;
.source "ActionBarService.java"
.field public static final enum a:Lcom/instagram/a/j;
.field public static final enum b:Lcom/instagram/a/j;
.field public static final enum c:Lcom/instagram/a/j;
.field private static final synthetic e:[Lcom/instagram/a/j;
.field private final d:I
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/instagram/a/j;
const-string v1, "SEARCH"
sget v2, Lcom/facebook/au;->nav_search:I
invoke-direct {v0, v1, v3, v2}, Lcom/instagram/a/j;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/instagram/a/j;->a:Lcom/instagram/a/j;
new-instance v0, Lcom/instagram/a/j;
const-string v1, "OVERFLOW"
sget v2, Lcom/facebook/au;->nav_more:I
invoke-direct {v0, v1, v4, v2}, Lcom/instagram/a/j;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;
new-instance v0, Lcom/instagram/a/j;
const-string v1, "NEXT"
sget v2, Lcom/facebook/au;->nav_arrow_next:I
invoke-direct {v0, v1, v5, v2}, Lcom/instagram/a/j;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/instagram/a/j;->c:Lcom/instagram/a/j;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/a/j;
sget-object v1, Lcom/instagram/a/j;->a:Lcom/instagram/a/j;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/a/j;->c:Lcom/instagram/a/j;
aput-object v1, v0, v5
sput-object v0, Lcom/instagram/a/j;->e:[Lcom/instagram/a/j;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/instagram/a/j;->d:I
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/a/j;
.registers 2
const-class v0, Lcom/instagram/a/j;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/a/j;
return-object v0
.end method
.method public static values()[Lcom/instagram/a/j;
.registers 1
sget-object v0, Lcom/instagram/a/j;->e:[Lcom/instagram/a/j;
invoke-virtual {v0}, [Lcom/instagram/a/j;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/a/j;
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/a/j;->d:I
return v0
.end method
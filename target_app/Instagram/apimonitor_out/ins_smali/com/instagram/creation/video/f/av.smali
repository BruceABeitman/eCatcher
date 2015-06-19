.class public final enum Lcom/instagram/creation/video/f/av;
.super Ljava/lang/Enum;
.source "VideoEditFragment.java"
.field public static final enum a:Lcom/instagram/creation/video/f/av;
.field public static final enum b:Lcom/instagram/creation/video/f/av;
.field public static final enum c:Lcom/instagram/creation/video/f/av;
.field private static final synthetic e:[Lcom/instagram/creation/video/f/av;
.field  d:I
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x0
const/4 v3, 0x2
const/4 v2, 0x1
new-instance v0, Lcom/instagram/creation/video/f/av;
const-string v1, "FILTER"
invoke-direct {v0, v1, v4, v2}, Lcom/instagram/creation/video/f/av;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;
new-instance v0, Lcom/instagram/creation/video/f/av;
const-string v1, "COVER"
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/video/f/av;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;
new-instance v0, Lcom/instagram/creation/video/f/av;
const-string v1, "TRIM"
invoke-direct {v0, v1, v3, v5}, Lcom/instagram/creation/video/f/av;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;
new-array v0, v5, [Lcom/instagram/creation/video/f/av;
sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;
aput-object v1, v0, v3
sput-object v0, Lcom/instagram/creation/video/f/av;->e:[Lcom/instagram/creation/video/f/av;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/instagram/creation/video/f/av;->d:I
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/creation/video/f/av;
.registers 2
const-class v0, Lcom/instagram/creation/video/f/av;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/f/av;
return-object v0
.end method
.method public static values()[Lcom/instagram/creation/video/f/av;
.registers 1
sget-object v0, Lcom/instagram/creation/video/f/av;->e:[Lcom/instagram/creation/video/f/av;
invoke-virtual {v0}, [Lcom/instagram/creation/video/f/av;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/creation/video/f/av;
return-object v0
.end method
.class public final enum Lcom/viewpagerindicator/d;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/viewpagerindicator/d;
.field public static final enum b:Lcom/viewpagerindicator/d;
.field public static final enum c:Lcom/viewpagerindicator/d;
.field private static final synthetic e:[Lcom/viewpagerindicator/d;
.field public final d:I
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/viewpagerindicator/d;
const-string v1, "None"
invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/d;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/viewpagerindicator/d;->a:Lcom/viewpagerindicator/d;
new-instance v0, Lcom/viewpagerindicator/d;
const-string v1, "Triangle"
invoke-direct {v0, v1, v3, v3}, Lcom/viewpagerindicator/d;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/viewpagerindicator/d;->b:Lcom/viewpagerindicator/d;
new-instance v0, Lcom/viewpagerindicator/d;
const-string v1, "Underline"
invoke-direct {v0, v1, v4, v4}, Lcom/viewpagerindicator/d;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/viewpagerindicator/d;->c:Lcom/viewpagerindicator/d;
const/4 v0, 0x3
new-array v0, v0, [Lcom/viewpagerindicator/d;
sget-object v1, Lcom/viewpagerindicator/d;->a:Lcom/viewpagerindicator/d;
aput-object v1, v0, v2
sget-object v1, Lcom/viewpagerindicator/d;->b:Lcom/viewpagerindicator/d;
aput-object v1, v0, v3
sget-object v1, Lcom/viewpagerindicator/d;->c:Lcom/viewpagerindicator/d;
aput-object v1, v0, v4
sput-object v0, Lcom/viewpagerindicator/d;->e:[Lcom/viewpagerindicator/d;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/viewpagerindicator/d;->d:I
return-void
.end method
.method public static a(I)Lcom/viewpagerindicator/d;
.registers 6
invoke-static {}, Lcom/viewpagerindicator/d;->values()[Lcom/viewpagerindicator/d;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_14
aget-object v0, v2, v1
iget v4, v0, Lcom/viewpagerindicator/d;->d:I
if-ne v4, p0, :cond_10
:goto_f
return-object v0
:cond_10
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_14
const/4 v0, 0x0
goto :goto_f
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/d;
.registers 2
const-class v0, Lcom/viewpagerindicator/d;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/viewpagerindicator/d;
return-object v0
.end method
.method public static values()[Lcom/viewpagerindicator/d;
.registers 1
sget-object v0, Lcom/viewpagerindicator/d;->e:[Lcom/viewpagerindicator/d;
invoke-virtual {v0}, [Lcom/viewpagerindicator/d;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/viewpagerindicator/d;
return-object v0
.end method
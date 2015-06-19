.class public final enum Lcom/instagram/model/a/a;
.super Ljava/lang/Enum;
.source "MediaType.java"
.field public static final enum a:Lcom/instagram/model/a/a;
.field public static final enum b:Lcom/instagram/model/a/a;
.field private static final c:Ljava/util/Map;
.field private static final synthetic e:[Lcom/instagram/model/a/a;
.field private final d:I
.method static constructor <clinit>()V
.registers 6
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v0, 0x0
new-instance v1, Lcom/instagram/model/a/a;
const-string v2, "PHOTO"
invoke-direct {v1, v2, v0, v3}, Lcom/instagram/model/a/a;-><init>(Ljava/lang/String;II)V
sput-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
new-instance v1, Lcom/instagram/model/a/a;
const-string v2, "VIDEO"
invoke-direct {v1, v2, v3, v4}, Lcom/instagram/model/a/a;-><init>(Ljava/lang/String;II)V
sput-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
new-array v1, v4, [Lcom/instagram/model/a/a;
sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
aput-object v2, v1, v0
sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
aput-object v2, v1, v3
sput-object v1, Lcom/instagram/model/a/a;->e:[Lcom/instagram/model/a/a;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
sput-object v1, Lcom/instagram/model/a/a;->c:Ljava/util/Map;
invoke-static {}, Lcom/instagram/model/a/a;->values()[Lcom/instagram/model/a/a;
move-result-object v1
array-length v2, v1
:goto_2d
if-ge v0, v2, :cond_3f
aget-object v3, v1, v0
sget-object v4, Lcom/instagram/model/a/a;->c:Ljava/util/Map;
iget v5, v3, Lcom/instagram/model/a/a;->d:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_2d
:cond_3f
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/instagram/model/a/a;->d:I
return-void
.end method
.method public static a(I)Lcom/instagram/model/a/a;
.registers 3
sget-object v0, Lcom/instagram/model/a/a;->c:Ljava/util/Map;
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/model/a/a;
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/model/a/a;
.registers 2
const-class v0, Lcom/instagram/model/a/a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/model/a/a;
return-object v0
.end method
.method public static values()[Lcom/instagram/model/a/a;
.registers 1
sget-object v0, Lcom/instagram/model/a/a;->e:[Lcom/instagram/model/a/a;
invoke-virtual {v0}, [Lcom/instagram/model/a/a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/model/a/a;
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/model/a/a;->d:I
return v0
.end method
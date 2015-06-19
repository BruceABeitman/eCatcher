.class final enum Lcom/instagram/android/k/b;
.super Ljava/lang/Enum;
.source "ContentAdvisoryUtil.java"
.field public static final enum a:Lcom/instagram/android/k/b;
.field public static final enum b:Lcom/instagram/android/k/b;
.field public static final enum c:Lcom/instagram/android/k/b;
.field private static final synthetic g:[Lcom/instagram/android/k/b;
.field public final d:I
.field public final e:I
.field public final f:I
.method static constructor <clinit>()V
.registers 11
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/android/k/b;
const-string v1, "EatingDisorder"
sget v3, Lcom/facebook/ar;->eating_disorder_warning:I
sget v4, Lcom/facebook/ar;->eating_disorders_tags:I
sget v5, Lcom/facebook/az;->eating_disorder_url:I
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/k/b;-><init>(Ljava/lang/String;IIII)V
sput-object v0, Lcom/instagram/android/k/b;->a:Lcom/instagram/android/k/b;
new-instance v3, Lcom/instagram/android/k/b;
const-string v4, "SelfHarm"
sget v6, Lcom/facebook/ar;->self_harm_warning:I
sget v7, Lcom/facebook/ar;->self_harm_tags:I
sget v8, Lcom/facebook/az;->self_harm_url:I
move v5, v9
invoke-direct/range {v3 .. v8}, Lcom/instagram/android/k/b;-><init>(Ljava/lang/String;IIII)V
sput-object v3, Lcom/instagram/android/k/b;->b:Lcom/instagram/android/k/b;
new-instance v3, Lcom/instagram/android/k/b;
const-string v4, "RegulatedGoods"
sget v6, Lcom/facebook/ar;->regulated_goods_warning:I
sget v7, Lcom/facebook/ar;->regulated_goods_tags:I
sget v8, Lcom/facebook/az;->regulated_goods_url:I
move v5, v10
invoke-direct/range {v3 .. v8}, Lcom/instagram/android/k/b;-><init>(Ljava/lang/String;IIII)V
sput-object v3, Lcom/instagram/android/k/b;->c:Lcom/instagram/android/k/b;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/android/k/b;
sget-object v1, Lcom/instagram/android/k/b;->a:Lcom/instagram/android/k/b;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/android/k/b;->b:Lcom/instagram/android/k/b;
aput-object v1, v0, v9
sget-object v1, Lcom/instagram/android/k/b;->c:Lcom/instagram/android/k/b;
aput-object v1, v0, v10
sput-object v0, Lcom/instagram/android/k/b;->g:[Lcom/instagram/android/k/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IIII)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/instagram/android/k/b;->d:I
iput p4, p0, Lcom/instagram/android/k/b;->f:I
iput p5, p0, Lcom/instagram/android/k/b;->e:I
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/k/b;
.registers 2
const-class v0, Lcom/instagram/android/k/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/android/k/b;
return-object v0
.end method
.method public static values()[Lcom/instagram/android/k/b;
.registers 1
sget-object v0, Lcom/instagram/android/k/b;->g:[Lcom/instagram/android/k/b;
invoke-virtual {v0}, [Lcom/instagram/android/k/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/android/k/b;
return-object v0
.end method
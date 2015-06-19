.class public final enum Lcom/instagram/android/login/fragment/bx;
.super Ljava/lang/Enum;
.source "RegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/login/fragment/bx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/android/login/fragment/bx;

.field public static final enum b:Lcom/instagram/android/login/fragment/bx;

.field public static final enum c:Lcom/instagram/android/login/fragment/bx;

.field private static final synthetic e:[Lcom/instagram/android/login/fragment/bx;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/instagram/android/login/fragment/bx;

    const-string v1, "Unchecked"

    sget v2, Lcom/facebook/as;->grey_2:I

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/android/login/fragment/bx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    new-instance v0, Lcom/instagram/android/login/fragment/bx;

    const-string v1, "Invalid"

    sget v2, Lcom/facebook/as;->red_medium:I

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/android/login/fragment/bx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    new-instance v0, Lcom/instagram/android/login/fragment/bx;

    const-string v1, "Valid"

    sget v2, Lcom/facebook/as;->green_medium:I

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/android/login/fragment/bx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/login/fragment/bx;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/android/login/fragment/bx;->e:[Lcom/instagram/android/login/fragment/bx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/instagram/android/login/fragment/bx;->d:I

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/ColorFilter;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/login/fragment/bx;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/bx;Landroid/content/Context;)Landroid/graphics/ColorFilter;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bx;->a(Landroid/content/Context;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/login/fragment/bx;
    .registers 2

    const-class v0, Lcom/instagram/android/login/fragment/bx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/fragment/bx;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/login/fragment/bx;
    .registers 1

    sget-object v0, Lcom/instagram/android/login/fragment/bx;->e:[Lcom/instagram/android/login/fragment/bx;

    invoke-virtual {v0}, [Lcom/instagram/android/login/fragment/bx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/login/fragment/bx;

    return-object v0
.end method

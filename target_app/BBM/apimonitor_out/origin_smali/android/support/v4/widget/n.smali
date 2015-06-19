.class public final Landroid/support/v4/widget/n;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# static fields
.field static final b:Landroid/support/v4/widget/o;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/widget/r;

    invoke-direct {v0}, Landroid/support/v4/widget/r;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/widget/q;

    invoke-direct {v0}, Landroid/support/v4/widget/q;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;

    goto :goto_d

    :cond_1a
    new-instance v0, Landroid/support/v4/widget/p;

    invoke-direct {v0}, Landroid/support/v4/widget/p;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;

    goto :goto_d
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/o;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/n;
    .registers 3

    new-instance v0, Landroid/support/v4/widget/n;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/o;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final b()I
    .registers 3

    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/o;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 3

    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/o;->e(Ljava/lang/Object;)V

    return-void
.end method

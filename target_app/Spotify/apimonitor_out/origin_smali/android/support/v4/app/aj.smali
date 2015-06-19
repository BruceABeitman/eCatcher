.class public final Landroid/support/v4/app/aj;
.super Landroid/support/v4/app/at;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/at;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/aj;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/aj;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj;
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/aj;->f:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aj;->g:Z

    return-object p0
.end method

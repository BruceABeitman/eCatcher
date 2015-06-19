.class public Landroid/support/v4/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Landroid/support/v4/view/c;

.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_16

    new-instance v0, Landroid/support/v4/view/d;

    invoke-direct {v0}, Landroid/support/v4/view/d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    :goto_d
    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    invoke-interface {v0}, Landroid/support/v4/view/c;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    return-void

    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_24

    new-instance v0, Landroid/support/v4/view/b;

    invoke-direct {v0}, Landroid/support/v4/view/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    goto :goto_d

    :cond_24
    new-instance v0, Landroid/support/v4/view/e;

    invoke-direct {v0}, Landroid/support/v4/view/e;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/c;->a(Landroid/support/v4/view/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/support/v4/view/a/h;
    .registers 3

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;I)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Landroid/support/v4/view/c;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Landroid/support/v4/view/c;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/a;->b:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.class public final Lcom/instagram/ui/menu/b;
.super Ljava/lang/Object;
.source "CheckItem.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IIZLandroid/view/View$OnClickListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/ui/menu/b;->a:I

    iput p2, p0, Lcom/instagram/ui/menu/b;->b:I

    iput-boolean p3, p0, Lcom/instagram/ui/menu/b;->c:Z

    iput-object p4, p0, Lcom/instagram/ui/menu/b;->d:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/ui/menu/b;->c:Z

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/instagram/ui/menu/b;->a:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/instagram/ui/menu/b;->b:I

    return v0
.end method

.method public final d()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/menu/b;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

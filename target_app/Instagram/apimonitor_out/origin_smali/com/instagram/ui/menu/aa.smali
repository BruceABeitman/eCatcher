.class public final Lcom/instagram/ui/menu/aa;
.super Ljava/lang/Object;
.source "SwitchItem.java"


# instance fields
.field private final a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private b:Z

.field private c:Ljava/lang/CharSequence;

.field private d:I


# direct methods
.method public constructor <init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/ui/menu/aa;->d:I

    iput-boolean p2, p0, Lcom/instagram/ui/menu/aa;->b:Z

    iput-object p3, p0, Lcom/instagram/ui/menu/aa;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/ui/menu/aa;->d:I

    return v0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/ui/menu/aa;->b:Z

    return-void
.end method

.method public final b()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/menu/aa;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/ui/menu/aa;->b:Z

    return v0
.end method

.method public final d()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/menu/aa;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

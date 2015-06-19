.class final Lcom/instagram/android/widget/i;
.super Ljava/lang/Object;
.source "IndeterminateCheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/IndeterminateCheckBox;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/IndeterminateCheckBox;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/widget/i;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/widget/i;->a:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-static {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->a(Lcom/instagram/android/widget/IndeterminateCheckBox;)Landroid/widget/CheckBox;

    move-result-object v1

    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

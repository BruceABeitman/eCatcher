.class public Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VanishPlayButtonListener"
.end annotation


# instance fields
.field private final holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

.field final synthetic this$0:Lco/vine/android/ConversationAdapter;


# direct methods
.method public constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->this$0:Lco/vine/android/ConversationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishThumbnailOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->loadImage:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timerOval:Lco/vine/android/drawable/ColoredOvalDrawable;

    const/high16 v1, -0x100

    iget-object v2, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget v2, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->color:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lco/vine/android/drawable/ColoredOvalDrawable;->setColor(I)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->this$0:Lco/vine/android/ConversationAdapter;

    iget-object v1, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget v1, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->position:I

    invoke-virtual {v0, v1}, Lco/vine/android/ConversationAdapter;->play(I)V

    return-void
.end method

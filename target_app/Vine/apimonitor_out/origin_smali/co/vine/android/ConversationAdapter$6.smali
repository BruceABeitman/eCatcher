.class Lco/vine/android/ConversationAdapter$6;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;


# direct methods
.method constructor <init>(Lco/vine/android/ConversationAdapter;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationAdapter$6;->this$0:Lco/vine/android/ConversationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$6;->this$0:Lco/vine/android/ConversationAdapter;

    #getter for: Lco/vine/android/ConversationAdapter;->mCurrentBlurImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lco/vine/android/ConversationAdapter;->access$900(Lco/vine/android/ConversationAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$6;->this$0:Lco/vine/android/ConversationAdapter;

    #getter for: Lco/vine/android/ConversationAdapter;->mCurrentBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lco/vine/android/ConversationAdapter;->access$1000(Lco/vine/android/ConversationAdapter;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_26

    new-instance v0, Lco/vine/android/ConversationAdapter$BlurRunnable;

    iget-object v1, p0, Lco/vine/android/ConversationAdapter$6;->this$0:Lco/vine/android/ConversationAdapter;

    iget-object v2, p0, Lco/vine/android/ConversationAdapter$6;->this$0:Lco/vine/android/ConversationAdapter;

    #getter for: Lco/vine/android/ConversationAdapter;->mCurrentBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lco/vine/android/ConversationAdapter;->access$1000(Lco/vine/android/ConversationAdapter;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/ConversationAdapter$6;->this$0:Lco/vine/android/ConversationAdapter;

    #getter for: Lco/vine/android/ConversationAdapter;->mCurrentBlurImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lco/vine/android/ConversationAdapter;->access$900(Lco/vine/android/ConversationAdapter;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/ConversationAdapter$BlurRunnable;-><init>(Lco/vine/android/ConversationAdapter;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Lco/vine/android/ConversationAdapter$BlurRunnable;->run()V

    :cond_26
    return-void
.end method

.class public Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;
.super Lco/vine/android/player/OnListVideoClickListener;
.source "ConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversationVideoClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;


# direct methods
.method public constructor <init>(Lco/vine/android/ConversationAdapter;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;->this$0:Lco/vine/android/ConversationAdapter;

    invoke-direct {p0, p1}, Lco/vine/android/player/OnListVideoClickListener;-><init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/player/OnListVideoClickListener;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;->this$0:Lco/vine/android/ConversationAdapter;

    const/4 v1, -0x1

    #setter for: Lco/vine/android/ConversationAdapter;->mSingleLoopPosition:I
    invoke-static {v0, v1}, Lco/vine/android/ConversationAdapter;->access$802(Lco/vine/android/ConversationAdapter;I)I

    return-void
.end method

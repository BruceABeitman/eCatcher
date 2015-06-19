.class public Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;
.super Ljava/lang/Object;
.source "AnimatingCircle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/AnimatingCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/AnimatingCircle;


# direct methods
.method public constructor <init>(Lco/vine/android/widget/AnimatingCircle;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;->this$0:Lco/vine/android/widget/AnimatingCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;->this$0:Lco/vine/android/widget/AnimatingCircle;

    iget-object v1, p0, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;->this$0:Lco/vine/android/widget/AnimatingCircle;

    #getter for: Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
    invoke-static {v1}, Lco/vine/android/widget/AnimatingCircle;->access$000(Lco/vine/android/widget/AnimatingCircle;)F

    move-result v1

    iget-object v2, p0, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;->this$0:Lco/vine/android/widget/AnimatingCircle;

    #getter for: Lco/vine/android/widget/AnimatingCircle;->mStepDistance:F
    invoke-static {v2}, Lco/vine/android/widget/AnimatingCircle;->access$100(Lco/vine/android/widget/AnimatingCircle;)F

    move-result v2

    add-float/2addr v1, v2

    #setter for: Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
    invoke-static {v0, v1}, Lco/vine/android/widget/AnimatingCircle;->access$002(Lco/vine/android/widget/AnimatingCircle;F)F

    iget-object v0, p0, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;->this$0:Lco/vine/android/widget/AnimatingCircle;

    invoke-virtual {v0}, Lco/vine/android/widget/AnimatingCircle;->invalidate()V

    iget-object v0, p0, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;->this$0:Lco/vine/android/widget/AnimatingCircle;

    invoke-virtual {v0}, Lco/vine/android/widget/AnimatingCircle;->startDefaultAnimation()V

    return-void
.end method

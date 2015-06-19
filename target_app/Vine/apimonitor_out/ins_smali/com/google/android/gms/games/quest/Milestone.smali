.class public interface abstract Lcom/google/android/gms/games/quest/Milestone;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;
.field public static final STATE_CLAIMED:I = 0x4
.field public static final STATE_COMPLETED_NOT_CLAIMED:I = 0x3
.field public static final STATE_NOT_COMPLETED:I = 0x2
.field public static final STATE_NOT_STARTED:I = 0x1
.field public static final UNSET_CRITERIA:J = -0x1L
.method public abstract getCompletionRewardData()[B
.end method
.method public abstract getCurrentProgress()J
.end method
.method public abstract getEventId()Ljava/lang/String;
.end method
.method public abstract getMilestoneId()Ljava/lang/String;
.end method
.method public abstract getState()I
.end method
.method public abstract getTargetProgress()J
.end method
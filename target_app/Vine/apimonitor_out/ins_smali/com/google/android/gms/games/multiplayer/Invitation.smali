.class public interface abstract Lcom/google/android/gms/games/multiplayer/Invitation;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;
.implements Lcom/google/android/gms/games/multiplayer/Participatable;
.field public static final INVITATION_TYPE_REAL_TIME:I = 0x0
.field public static final INVITATION_TYPE_TURN_BASED:I = 0x1
.method public abstract getAvailableAutoMatchSlots()I
.end method
.method public abstract getCreationTimestamp()J
.end method
.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method
.method public abstract getInvitationId()Ljava/lang/String;
.end method
.method public abstract getInvitationType()I
.end method
.method public abstract getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
.end method
.method public abstract getVariant()I
.end method
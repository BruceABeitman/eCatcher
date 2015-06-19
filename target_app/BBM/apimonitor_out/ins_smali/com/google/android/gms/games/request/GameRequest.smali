.class public interface abstract Lcom/google/android/gms/games/request/GameRequest;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;
.field public static final RECIPIENT_STATUS_ACCEPTED:I = 0x1
.field public static final RECIPIENT_STATUS_PENDING:I = 0x0
.field public static final TYPE_ALL:I = 0xffff
.field public static final TYPE_GIFT:I = 0x1
.field public static final TYPE_WISH:I = 0x2
.method public abstract fU()Ljava/util/ArrayList;
.end method
.method public abstract getCreationTimestamp()J
.end method
.method public abstract getData()[B
.end method
.method public abstract getExpirationTimestamp()J
.end method
.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method
.method public abstract getRecipient()Lcom/google/android/gms/games/Player;
.end method
.method public abstract getRecipientStatus()I
.end method
.method public abstract getRecipientStatus(Ljava/lang/String;)I
.end method
.method public abstract getRequestId()Ljava/lang/String;
.end method
.method public abstract getSender()Lcom/google/android/gms/games/Player;
.end method
.method public abstract getType()I
.end method
.method public abstract isConsumed()Z
.end method
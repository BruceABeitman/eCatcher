.class public interface abstract Lcom/google/android/gms/games/Player;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;
.field public static final CURRENT_XP_UNKNOWN:J = -0x1L
.field public static final TIMESTAMP_UNKNOWN:J = -0x1L
.method public abstract gN()I
.end method
.method public abstract gO()Z
.end method
.method public abstract gP()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
.end method
.method public abstract getDisplayName()Ljava/lang/String;
.end method
.method public abstract getDisplayName(Landroid/database/CharArrayBuffer;)V
.end method
.method public abstract getHiResImageUri()Landroid/net/Uri;
.end method
.method public abstract getHiResImageUrl()Ljava/lang/String;
.end method
.method public abstract getIconImageUri()Landroid/net/Uri;
.end method
.method public abstract getIconImageUrl()Ljava/lang/String;
.end method
.method public abstract getLastPlayedWithTimestamp()J
.end method
.method public abstract getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
.end method
.method public abstract getPlayerId()Ljava/lang/String;
.end method
.method public abstract getRetrievedTimestamp()J
.end method
.method public abstract getTitle()Ljava/lang/String;
.end method
.method public abstract getTitle(Landroid/database/CharArrayBuffer;)V
.end method
.method public abstract hasHiResImage()Z
.end method
.method public abstract hasIconImage()Z
.end method
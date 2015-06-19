.class public final Lcom/spotify/mobile/android/util/tracking/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:J
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:Z
.field private g:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/l;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/util/tracking/l;->b:Ljava/lang/String;
iput-wide p3, p0, Lcom/spotify/mobile/android/util/tracking/l;->c:J
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/l;->e:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/l;->f:Z
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JB)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/util/tracking/l;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/util/tracking/l;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/l;->e:Z
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/l;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/l;->g:Ljava/lang/String;
return-object p0
.end method
.method public final b()Lcom/spotify/mobile/android/util/tracking/l;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/l;->f:Z
return-object p0
.end method
.method public final c()Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
.registers 11
new-instance v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/l;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/util/tracking/l;->d:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/util/tracking/l;->e:Z
iget-boolean v4, p0, Lcom/spotify/mobile/android/util/tracking/l;->f:Z
iget-object v5, p0, Lcom/spotify/mobile/android/util/tracking/l;->b:Ljava/lang/String;
iget-wide v6, p0, Lcom/spotify/mobile/android/util/tracking/l;->c:J
iget-object v8, p0, Lcom/spotify/mobile/android/util/tracking/l;->g:Ljava/lang/String;
const/4 v9, 0x0
invoke-direct/range {v0 .. v9}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;B)V
return-object v0
.end method
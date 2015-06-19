.class public final Lcom/spotify/mobile/android/util/Collection;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(ZZ)Lcom/spotify/mobile/android/util/Collection$State;
.registers 3
if-nez p0, :cond_5
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->c:Lcom/spotify/mobile/android/util/Collection$State;
:goto_4
return-object v0
:cond_5
if-nez p1, :cond_a
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->b:Lcom/spotify/mobile/android/util/Collection$State;
goto :goto_4
:cond_a
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->a:Lcom/spotify/mobile/android/util/Collection$State;
goto :goto_4
.end method
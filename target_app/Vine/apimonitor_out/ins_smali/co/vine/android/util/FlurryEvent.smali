.class public Lco/vine/android/util/FlurryEvent;
.super Ljava/lang/Object;
.source "FlurryEvent.java"
.field private final mEventName:Ljava/lang/String;
.field public mInfo:Ljava/util/HashMap;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/util/FlurryEvent;->mEventName:Ljava/lang/String;
return-void
.end method
.method public static log(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V
return-void
.end method
.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
new-instance v0, Lco/vine/android/util/FlurryEvent;
invoke-direct {v0, p0}, Lco/vine/android/util/FlurryEvent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1, p2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/util/FlurryEvent;->log()V
return-void
.end method
.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
.registers 6
new-instance v0, Lco/vine/android/util/FlurryEvent;
invoke-direct {v0, p0}, Lco/vine/android/util/FlurryEvent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1, p2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;
move-result-object v0
invoke-virtual {v0, p3, p4}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/util/FlurryEvent;->log()V
return-void
.end method
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;
.registers 5
iget-object v0, p0, Lco/vine/android/util/FlurryEvent;->mInfo:Ljava/util/HashMap;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/util/FlurryEvent;->mInfo:Ljava/util/HashMap;
:cond_b
iget-object v0, p0, Lco/vine/android/util/FlurryEvent;->mInfo:Ljava/util/HashMap;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public log()V
.registers 3
iget-object v0, p0, Lco/vine/android/util/FlurryEvent;->mInfo:Ljava/util/HashMap;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/util/FlurryEvent;->mEventName:Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/util/FlurryEvent;->mInfo:Ljava/util/HashMap;
invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lco/vine/android/util/FlurryEvent;->mEventName:Ljava/lang/String;
invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V
goto :goto_b
.end method
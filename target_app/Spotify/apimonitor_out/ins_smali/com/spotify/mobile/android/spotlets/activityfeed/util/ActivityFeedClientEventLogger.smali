.class public final Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;
.field private final b:Landroid/content/Context;
.field private c:Ljava/util/HashSet;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a:Lcom/spotify/mobile/android/ui/actions/a;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->b:Landroid/content/Context;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->c:Ljava/util/HashSet;
if-eqz p2, :cond_25
const-string v0, "activity_feed_logger_logged_story_impressions"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_25
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->c:Ljava/util/HashSet;
invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
:cond_25
return-void
.end method
.method private a(Lcom/spotify/mobile/android/util/ClientEvent;J)V
.registers 6
const-string v0, "duration_in_ms"
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
return-void
.end method
.method private a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
.registers 7
if-eqz p2, :cond_37
const-string v0, "index"
invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "comment"
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getDescription()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "target_uri"
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "item_name"
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "item_uri"
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
:cond_37
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->b:Landroid/content/Context;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->i:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v0, v1, v2, p1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public final a()V
.registers 4
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bE:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
return-void
.end method
.method public final a(I)V
.registers 5
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bF:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "n_shares"
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
return-void
.end method
.method public final a(II)V
.registers 6
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bG:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "n_shares"
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "n_new_shares"
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
return-void
.end method
.method public final a(JJJ)V
.registers 10
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->W:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bT:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
sub-long v1, p5, p1
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;J)V
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->W:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bS:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
sub-long v1, p5, p3
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;J)V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->c:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->c:Ljava/util/HashSet;
invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
const-string v1, "activity_feed_logger_logged_story_impressions"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
.registers 6
if-eqz p1, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->c:Ljava/util/HashSet;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bI:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-direct {p0, v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
:cond_1a
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
.registers 7
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$1;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_24
:goto_d
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-direct {p0, v1, p2, p3}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
return-void
:pswitch_18
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bJ:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_d
:pswitch_1b
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bK:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_d
:pswitch_1e
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bL:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_d
:pswitch_21
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_d
:pswitch_data_24
.packed-switch 0x1
:pswitch_18
:pswitch_1b
:pswitch_1e
:pswitch_21
.end packed-switch
.end method
.method public final b(II)V
.registers 6
if-ne p1, p2, :cond_3
:goto_2
return-void
:cond_3
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bH:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "n_shares"
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "n_additional_shares"
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
goto :goto_2
.end method
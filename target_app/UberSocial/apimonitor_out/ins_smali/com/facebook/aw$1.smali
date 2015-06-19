.class final Lcom/facebook/aw$1;
.super Ljava/util/HashSet;
.source "SourceFile"
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/util/HashSet;-><init>()V
const-string v0, "ads_management"
invoke-virtual {p0, v0}, Lcom/facebook/aw$1;->add(Ljava/lang/Object;)Z
const-string v0, "create_event"
invoke-virtual {p0, v0}, Lcom/facebook/aw$1;->add(Ljava/lang/Object;)Z
const-string v0, "rsvp_event"
invoke-virtual {p0, v0}, Lcom/facebook/aw$1;->add(Ljava/lang/Object;)Z
return-void
.end method
.class public Lcom/bbm/g/ao;
.super Ljava/lang/Object;
.source "GroupsProtocol.java"
.field public final a:Lcom/bbm/d/a/f;
.field private final b:Lcom/bbm/d/a/b/a;
.field private final c:Lcom/bbm/d/a/b/a;
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V
.registers 10
const/4 v6, 0x0
const/4 v5, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/d/a/f;
new-instance v1, Lcom/bbm/d/a/h;
invoke-direct {v1}, Lcom/bbm/d/a/h;-><init>()V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "name"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "global"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "group"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
const-string v2, "allowNonAdminToInvite"
const-string v4, "True"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "canAssumeAdmin"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "canRequestAdminByPassword"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "deletePictureFromMessageAppInvoked"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "ignoreUpdatesForThisGroup"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isAdmin"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isCalendarUpdated"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isChatsUpdated"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isGroupUpdated"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isListsUpdated"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isMembersUpated"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isPicturesUpdated"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isProtected"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "showThisGroupsChatMessagesInTheMessageApp"
const-string v4, "True"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "showThisGroupsPicturesInTheMessageApp"
const-string v4, "True"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupCalendarAppointment"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
const-string v2, "allDayEvent"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "freeBusyStatus"
const-string v4, "Free"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "reminder"
const-string v4, "-1"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupContact"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupContactInactive"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupConversation"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
const-string v2, "numMessages"
const-string v4, "0"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupEventsUpcoming"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
const-string v2, "allDayEvent"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "invitationId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupInvitation"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
const-string v2, "groupIsProtected"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
const-string v2, "isForRestore"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "invitationId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupInvitationSent"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupList"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "messageId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupListComment"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "itemId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupListItem"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupMember"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "messageId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupMessage"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
const-string v2, "type"
const-string v4, "Text"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "uri"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupPicture"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "messageId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupPictureComment"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
const-string v2, "isFavourite"
const-string v4, "False"
invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "shareStatusId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupPictureShareStatus"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "pin"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupPinToContact"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "restoreStatusId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupRestoreStatus"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "updateId"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "groupUpdates"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
invoke-direct {v0, p1, v1, p2}, Lcom/bbm/d/a/f;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/d/a/i;)V
iput-object v0, p0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, p0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
new-instance v1, Lcom/bbm/d/a/d;
const-string v2, "global"
invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v2, Lcom/bbm/util/bl;
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/b/a;
iput-object v0, p0, Lcom/bbm/g/ao;->b:Lcom/bbm/d/a/b/a;
iget-object v0, p0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
new-instance v1, Lcom/bbm/d/a/d;
const-string v2, "groupPinToContact"
invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v2, Lcom/bbm/g/ah;
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/b/a;
iput-object v0, p0, Lcom/bbm/g/ao;->c:Lcom/bbm/d/a/b/a;
return-void
.end method
.method private a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
.registers 5
iget-object v0, p0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
invoke-virtual {v0, p1, p2, p3}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
return-object v0
.end method
.method private a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
.registers 4
iget-object v0, p0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
invoke-virtual {v0, p1, p2}, Lcom/bbm/d/a/f;->b(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public a()Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupRestoreStatus"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/ai;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/bbm/g/ct;)V
.registers 4
iget-object v0, p0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p1, Lcom/bbm/g/ct;->a:Lcom/bbm/f/ab;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
return-void
.end method
.method public b()Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupInvitationSent"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/v;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/bbm/g/ao;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/af;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/af;->m:Lcom/bbm/util/bh;
return-object v0
.end method
.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/af;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupPicture"
invoke-direct {v0, v1, p2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/af;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/af;
return-object v0
.end method
.method public c()Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupInvitation"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/t;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public c(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupUpdates"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/ak;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/ad;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupMessage"
invoke-direct {v0, v1, p2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/ad;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/ad;
return-object v0
.end method
.method public d()Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupConversation"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/q;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupPictureComment"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/ag;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/y;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupListItem"
invoke-direct {v0, v1, p2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/y;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/y;
return-object v0
.end method
.method public e()Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "group"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/a;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public e(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupPicture"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/af;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public f(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupMessage"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/ad;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/bbm/g/ao;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;
return-object v0
.end method
.method public g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupList"
invoke-direct {v0, v1, p2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/w;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/w;
return-object v0
.end method
.method public g(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupMember"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/ac;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/s;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupEventsUpcoming"
invoke-direct {v0, v1, p2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/s;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/s;
return-object v0
.end method
.method public h(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupListItem"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/y;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public i(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupListComment"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/x;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/bbm/g/ao;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/b;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
return-object v0
.end method
.method public j(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/b;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupCalendarAppointment"
invoke-direct {v0, v1, p2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/b;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/b;
return-object v0
.end method
.method public j(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupList"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/w;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public k(Ljava/lang/String;)Lcom/bbm/g/v;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupInvitationSent"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/v;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/v;
return-object v0
.end method
.method public l(Ljava/lang/String;)Lcom/bbm/g/t;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupInvitation"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/t;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/t;
return-object v0
.end method
.method public m(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupEventsUpcoming"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/s;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public n(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/g/ao;->o(Ljava/lang/String;)Lcom/bbm/g/q;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;
return-object v0
.end method
.method public o(Ljava/lang/String;)Lcom/bbm/g/q;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupConversation"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/q;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
return-object v0
.end method
.method public p(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupContactInactive"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/p;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public q(Ljava/lang/String;)Lcom/bbm/g/o;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupContact"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/o;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/o;
return-object v0
.end method
.method public r(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "groupCalendarAppointment"
invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/b;
invoke-direct {p0, v0, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public s(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/g/ao;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
return-object v0
.end method
.method public t(Ljava/lang/String;)Lcom/bbm/g/a;
.registers 4
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "group"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/g/a;
invoke-direct {p0, v0, p1, v1}, Lcom/bbm/g/ao;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/g/a;
return-object v0
.end method
.method public u(Ljava/lang/String;)Lcom/bbm/util/bl;
.registers 3
iget-object v0, p0, Lcom/bbm/g/ao;->b:Lcom/bbm/d/a/b/a;
invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/util/bl;
return-object v0
.end method
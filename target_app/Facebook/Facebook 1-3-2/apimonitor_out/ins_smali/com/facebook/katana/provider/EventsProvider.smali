.class public Lcom/facebook/katana/provider/EventsProvider;
.super Landroid/content/ContentProvider;
.source "EventsProvider.java"
.field static final synthetic $assertionsDisabled:Z = false
.field private static final AUTHORITY:Ljava/lang/String; = "com.facebook.katana.provider.EventsProvider"
.field private static final BASE_CONTENT_URI:Ljava/lang/String; = "content://com.facebook.katana.provider.EventsProvider/"
.field private static final EVENTS:I = 0x1
.field public static final EVENTS_CONTENT_URI:Landroid/net/Uri; = null
.field private static final EVENTS_PROJECTION_MAP:Ljava/util/HashMap; = null
.field private static final EVENTS_TABLE:Ljava/lang/String; = "events"
.field private static final EVENT_EID:I = 0x3
.field public static final EVENT_EID_CONTENT_URI:Landroid/net/Uri; = null
.field private static final EVENT_ID:I = 0x2
.field private static final SQL_EVENTS:Ljava/lang/String; = "CREATE TABLE events (_id INTEGER PRIMARY KEY,event_id INT,event_name TEXT,tagline TEXT,image_url TEXT,medium_image_url TEXT,host TEXT,description TEXT,event_type TEXT,event_subtype TEXT,start_time INT,end_time INT,creator_id INT,display_name TEXT,creator_image_url TEXT,location TEXT,venue BLOB,hide_guest_list INT,rsvp_status INT);"
.field private static final URL_MATCHER:Landroid/content/UriMatcher;
.field private mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
.method static constructor <clinit>()V
.registers 7
const/4 v2, 0x1
const-string v6, "creator_image_url"
const-string v5, "creator_id"
const-string v4, "_id"
const-string v3, "com.facebook.katana.provider.EventsProvider"
const-class v0, Lcom/facebook/katana/provider/EventsProvider;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_fc
move v0, v2
:goto_12
sput-boolean v0, Lcom/facebook/katana/provider/EventsProvider;->$assertionsDisabled:Z
const-string v0, "content://com.facebook.katana.provider.EventsProvider/events"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_CONTENT_URI:Landroid/net/Uri;
const-string v0, "content://com.facebook.katana.provider.EventsProvider/events/eid"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENT_EID_CONTENT_URI:Landroid/net/Uri;
new-instance v0, Landroid/content/UriMatcher;
const/4 v1, -0x1
invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
const-string v1, "com.facebook.katana.provider.EventsProvider"
const-string v1, "events"
invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
const-string v1, "com.facebook.katana.provider.EventsProvider"
const-string v1, "events/#"
const/4 v2, 0x2
invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
const-string v1, "com.facebook.katana.provider.EventsProvider"
const-string v1, "events/eid/#"
const/4 v2, 0x3
invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "_id"
const-string v1, "_id"
invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "event_id"
const-string v2, "event_id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "event_name"
const-string v2, "event_name"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "tagline"
const-string v2, "tagline"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "image_url"
const-string v2, "image_url"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "medium_image_url"
const-string v2, "medium_image_url"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "host"
const-string v2, "host"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "description"
const-string v2, "description"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "event_type"
const-string v2, "event_type"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "event_subtype"
const-string v2, "event_subtype"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "start_time"
const-string v2, "start_time"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "end_time"
const-string v2, "end_time"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "creator_id"
const-string v1, "creator_id"
invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "display_name"
const-string v2, "display_name"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "creator_image_url"
const-string v1, "creator_image_url"
invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "location"
const-string v2, "location"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "venue"
const-string v2, "venue"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "hide_guest_list"
const-string v2, "hide_guest_list"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
const-string v1, "rsvp_status"
const-string v2, "rsvp_status"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_fc
const/4 v0, 0x0
goto/16 :goto_12
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public static getTableNames()[Ljava/lang/String;
.registers 3
const/4 v1, 0x1
new-array v0, v1, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "events"
aput-object v2, v0, v1
return-object v0
.end method
.method public static getTableSQLs()[Ljava/lang/String;
.registers 3
const/4 v1, 0x1
new-array v0, v1, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "CREATE TABLE events (_id INTEGER PRIMARY KEY,event_id INT,event_name TEXT,tagline TEXT,image_url TEXT,medium_image_url TEXT,host TEXT,description TEXT,event_type TEXT,event_subtype TEXT,start_time INT,end_time INT,creator_id INT,display_name TEXT,creator_image_url TEXT,location TEXT,venue BLOB,hide_guest_list INT,rsvp_status INT);"
aput-object v2, v0, v1
return-object v0
.end method
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/katana/provider/EventsProvider;->insertHelper(Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/util/List;)I
move-result v0
return v0
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 11
const/4 v5, 0x0
const-string v6, "events"
iget-object v3, p0, Lcom/facebook/katana/provider/EventsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
invoke-virtual {v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
sget-object v3, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v3
packed-switch v3, :pswitch_data_7e
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Unknown URL "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:pswitch_27
const-string v3, "events"
invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
:goto_2d
if-lez v0, :cond_3a
invoke-virtual {p0}, Lcom/facebook/katana/provider/EventsProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:cond_3a
return v0
:pswitch_3b
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v3
const/4 v4, 0x1
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string v3, "events"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "_id="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
goto :goto_2d
:pswitch_5c
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v3
const/4 v4, 0x2
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string v3, "events"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "event_id="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
goto :goto_2d
nop
:pswitch_data_7e
.packed-switch 0x1
:pswitch_27
:pswitch_3b
:pswitch_5c
.end packed-switch
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 5
sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
packed-switch v0, :pswitch_data_22
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown URL "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1e
const-string v0, "vnd.android.cursor.item/vnd.com.facebook.katana.provider.events"
return-object v0
nop
:pswitch_data_22
.packed-switch 0x1
:pswitch_1e
:pswitch_1e
:pswitch_1e
.end packed-switch
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 9
const/4 v5, 0x0
const/4 v4, 0x1
new-array v2, v4, [Landroid/content/ContentValues;
aput-object p2, v2, v5
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
invoke-virtual {p0, p1, v2, v0}, Lcom/facebook/katana/provider/EventsProvider;->insertHelper(Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/util/List;)I
move-result v1
sget-boolean v3, Lcom/facebook/katana/provider/EventsProvider;->$assertionsDisabled:Z
if-nez v3, :cond_1b
if-eq v1, v4, :cond_1b
new-instance v3, Ljava/lang/AssertionError;
invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V
throw v3
:cond_1b
sget-boolean v3, Lcom/facebook/katana/provider/EventsProvider;->$assertionsDisabled:Z
if-nez v3, :cond_2b
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-eq v3, v4, :cond_2b
new-instance v3, Ljava/lang/AssertionError;
invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V
throw v3
:cond_2b
invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Landroid/net/Uri;
return-object p0
.end method
.method protected insertHelper(Landroid/net/Uri;[Landroid/content/ContentValues;Ljava/util/List;)I
.registers 12
const/4 v4, 0x0
iget-object v5, p0, Lcom/facebook/katana/provider/EventsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
invoke-virtual {v5}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
sget-object v5, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v5
packed-switch v5, :pswitch_data_72
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Unknown URL "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:pswitch_25
const/4 v1, 0x0
:goto_26
array-length v5, p2
if-lt v1, v5, :cond_38
if-lez v4, :cond_5c
invoke-virtual {p0}, Lcom/facebook/katana/provider/EventsProvider;->getContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
return v4
:cond_38
const-string v5, "events"
const-string v6, "event_name"
aget-object v7, p2, v1
invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v2
const-wide/16 v5, 0x0
cmp-long v5, v2, v5
if-lez v5, :cond_59
add-int/lit8 v4, v4, 0x1
if-eqz p3, :cond_59
sget-object v5, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_59
add-int/lit8 v1, v1, 0x1
goto :goto_26
:cond_5c
new-instance v5, Landroid/database/SQLException;
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Failed to insert rows into "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V
throw v5
nop
:pswitch_data_72
.packed-switch 0x1
:pswitch_25
.end packed-switch
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lcom/facebook/katana/provider/EventsProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/katana/provider/EventsProvider;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/provider/EventsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
iget-object v0, p0, Lcom/facebook/katana/provider/EventsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
move v2, v0
const-string v1, " - Lcom/facebook/katana/provider/EventsProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 18
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const/4 v8, 0x0
sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v11
packed-switch v11, :pswitch_data_aa
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unknown URL "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_24
const-string v1, "events"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
const-string v10, "start_time ASC"
:goto_30
invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_a7
move-object v7, v10
:goto_37
iget-object v1, p0, Lcom/facebook/katana/provider/EventsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
invoke-virtual {v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
const/4 v5, 0x0
const/4 v6, 0x0
move-object v2, p2
move-object v3, p3
move-object/from16 v4, p4
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v9
invoke-virtual {p0}, Lcom/facebook/katana/provider/EventsProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-interface {v9, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
return-object v9
:pswitch_53
const-string v1, "events"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v1, "_id="
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v1
const/4 v3, 0x1
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
const-string v10, "start_time ASC"
goto :goto_30
:pswitch_7d
const-string v1, "events"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v1, "event_id="
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v1
const/4 v3, 0x2
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_PROJECTION_MAP:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
const-string v10, "start_time ASC"
goto :goto_30
:cond_a7
move-object/from16 v7, p5
goto :goto_37
:pswitch_data_aa
.packed-switch 0x1
:pswitch_24
:pswitch_53
:pswitch_7d
.end packed-switch
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 12
const/4 v5, 0x0
const-string v6, "events"
iget-object v3, p0, Lcom/facebook/katana/provider/EventsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
invoke-virtual {v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
sget-object v3, Lcom/facebook/katana/provider/EventsProvider;->URL_MATCHER:Landroid/content/UriMatcher;
invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v3
packed-switch v3, :pswitch_data_7e
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Unknown URL "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:pswitch_27
const-string v3, "events"
invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
:goto_2d
if-lez v0, :cond_3a
invoke-virtual {p0}, Lcom/facebook/katana/provider/EventsProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:cond_3a
return v0
:pswitch_3b
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v3
const/4 v4, 0x1
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string v3, "events"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "_id="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v6, p2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
goto :goto_2d
:pswitch_5c
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v3
const/4 v4, 0x2
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string v3, "events"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "event_id="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v6, p2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
goto :goto_2d
nop
:pswitch_data_7e
.packed-switch 0x1
:pswitch_27
:pswitch_3b
:pswitch_5c
.end packed-switch
.end method
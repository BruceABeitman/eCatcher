.class public final Lcom/instagram/android/a/d;
.super Landroid/widget/BaseAdapter;
.source "NearbyVenuesAdapter.java"
.field private a:Ljava/lang/String;
.field private b:Landroid/view/LayoutInflater;
.field private c:Landroid/content/Context;
.field private d:Landroid/location/Location;
.field private e:Z
.field private f:Z
.field private g:Ljava/util/List;
.field private h:Ljava/util/Set;
.field private i:Ljava/util/List;
.field private j:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;
iput-object p1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;
invoke-direct {p0}, Lcom/instagram/android/a/d;->e()V
return-void
.end method
.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 6
packed-switch p1, :pswitch_data_22
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
:pswitch_9
iget-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;
invoke-static {v0, p2}, Lcom/instagram/android/a/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:goto_f
return-object v0
:pswitch_10
iget-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;
invoke-static {v0, p2}, Lcom/instagram/android/a/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_f
:pswitch_17
iget-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;
sget v1, Lcom/facebook/aw;->row_powered_by_foursquare:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
goto :goto_f
nop
:pswitch_data_22
.packed-switch 0x0
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_10
:pswitch_17
.end packed-switch
.end method
.method private a(IILandroid/view/View;)V
.registers 7
packed-switch p2, :pswitch_data_3e
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
:pswitch_9
iget-object v1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;
invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/l;
iget-object v2, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
invoke-static {v1, v0, v2}, Lcom/instagram/android/a/k;->a(Landroid/content/Context;Lcom/instagram/android/a/l;Ljava/lang/String;)V
:pswitch_16
:goto_16
return-void
:pswitch_17
iget-object v1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;
invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/l;
iget-object v2, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
invoke-static {v1, v0, v2}, Lcom/instagram/android/a/k;->b(Landroid/content/Context;Lcom/instagram/android/a/l;Ljava/lang/String;)V
goto :goto_16
:pswitch_25
invoke-virtual {p0, p1}, Lcom/instagram/android/a/d;->a(I)Lcom/instagram/venue/model/Venue;
move-result-object v1
invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/l;
invoke-static {v0, v1}, Lcom/instagram/android/a/k;->a(Lcom/instagram/android/a/l;Lcom/instagram/venue/model/Venue;)V
goto :goto_16
:pswitch_33
invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/j;
invoke-static {v0}, Lcom/instagram/android/a/i;->a(Lcom/instagram/android/a/j;)V
goto :goto_16
nop
:pswitch_data_3e
.packed-switch 0x0
:pswitch_9
:pswitch_17
:pswitch_25
:pswitch_33
:pswitch_16
.end packed-switch
.end method
.method static synthetic a(Lcom/instagram/android/a/d;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/a/d;->a(Ljava/util/List;)V
return-void
.end method
.method private a(Lcom/instagram/venue/model/Venue;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_c
.end method
.method private a(Ljava/util/List;)V
.registers 6
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;
const-string v2, "custom_venues.json"
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
:try_end_9
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_15
move-result-object v0
move-object v1, v0
:goto_b
if-nez v1, :cond_1e
const-string v0, "CustomVenuesAdapter"
const-string v1, "Failed to acquire output stream for custom_venues.json"
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_14
:goto_14
return-void
:catch_15
move-exception v0
const-string v2, "CustomVenuesAdapter"
const-string v3, "File not found wile getting output stream for custom_venues.json"
invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_b
:cond_1e
if-eqz p1, :cond_26
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_2e
:cond_26
const-string v0, "CustomVenuesAdapter"
const-string v1, "Custom venues is null during serialization"
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_2e
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-eqz v0, :cond_14
new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;
const-string v2, "CustomVenues"
invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V
const-class v2, Lcom/instagram/venue/model/Venue;
new-instance v3, Lcom/instagram/android/a/h;
invoke-direct {v3, p0}, Lcom/instagram/android/a/h;-><init>(Lcom/instagram/android/a/d;)V
invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
move-result-object v0
:try_start_52
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
:try_start_55
:try_end_55
.catchall {:try_start_52 .. :try_end_55} :catchall_69
.catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5b
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_58
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59
goto :goto_14
:catch_59
move-exception v0
goto :goto_14
:catch_5b
move-exception v0
:try_start_5c
const-string v2, "CustomVenuesAdapter"
const-string v3, "Exception while writing out custom_venues.json"
invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_63
.catchall {:try_start_5c .. :try_end_63} :catchall_69
:try_start_63
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_66
.catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67
goto :goto_14
:catch_67
move-exception v0
goto :goto_14
:catchall_69
move-exception v0
:try_start_6a
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:goto_6d
:try_end_6d
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e
throw v0
:catch_6e
move-exception v1
goto :goto_6d
.end method
.method private b(Ljava/lang/String;)Lcom/instagram/venue/model/Venue;
.registers 5
if-eqz p1, :cond_33
iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_18
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_18
:goto_32
return-object v0
:cond_33
const/4 v0, 0x0
goto :goto_32
.end method
.method private c()I
.registers 2
invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_c
.end method
.method private c(I)Lcom/instagram/venue/model/Venue;
.registers 3
invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I
move-result v0
packed-switch v0, :pswitch_data_1a
iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
:goto_f
return-object v0
:pswitch_10
iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
goto :goto_f
nop
:pswitch_data_1a
.packed-switch 0x1
:pswitch_10
.end packed-switch
.end method
.method private d()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_b
iget-object v2, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_31
return-void
.end method
.method private e()V
.registers 6
iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
const/4 v0, 0x0
:try_start_b
iget-object v1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;
const-string v2, "custom_venues.json"
invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
:try_end_12
.catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_69
move-result-object v0
move-object v1, v0
:goto_14
if-eqz v1, :cond_48
new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;
const-string v2, "CustomVenueModule"
invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V
const-class v2, Lcom/instagram/venue/model/Venue;
new-instance v3, Lcom/instagram/android/a/g;
const/4 v4, 0x0
invoke-direct {v3, v4}, Lcom/instagram/android/a/g;-><init>(B)V
invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
move-result-object v0
new-instance v2, Lcom/instagram/android/a/e;
invoke-direct {v2, p0}, Lcom/instagram/android/a/e;-><init>(Lcom/instagram/android/a/d;)V
:try_start_3a
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v2, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:try_start_45
:try_end_45
.catchall {:try_start_3a .. :try_end_45} :catchall_81
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_6c
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_48
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_86
:cond_48
:goto_48
iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_53
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
iget-object v2, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_53
:catch_69
move-exception v1
move-object v1, v0
goto :goto_14
:catch_6c
move-exception v0
:try_start_6d
const-string v2, "CustomVenuesAdapter"
const-string v3, "Failed to decode custom_venues.json, deleting file."
invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;
const-string v2, "custom_venues.json"
invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
:try_end_7b
.catchall {:try_start_6d .. :try_end_7b} :catchall_81
:try_start_7b
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_7e
.catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f
goto :goto_48
:catch_7f
move-exception v0
goto :goto_48
:catchall_81
move-exception v0
:try_start_82
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:goto_85
:try_end_85
.catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_88
throw v0
:catch_86
move-exception v0
goto :goto_48
:catch_88
move-exception v1
goto :goto_85
:cond_8a
return-void
.end method
.method private f()V
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v1, Lcom/instagram/android/a/f;
invoke-direct {v1, p0, v0}, Lcom/instagram/android/a/f;-><init>(Lcom/instagram/android/a/d;Ljava/util/List;)V
const/4 v0, 0x0
invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method private g()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final a()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/instagram/android/a/d;->d:Landroid/location/Location;
return-object v0
.end method
.method public final a(I)Lcom/instagram/venue/model/Venue;
.registers 4
invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I
move-result v0
if-ge p1, v0, :cond_b
invoke-direct {p0, p1}, Lcom/instagram/android/a/d;->c(I)Lcom/instagram/venue/model/Venue;
move-result-object v0
:cond_a
:goto_a
return-object v0
:cond_b
sub-int v0, p1, v0
packed-switch v0, :pswitch_data_38
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Get item called for unsupported footer row"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_18
iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/instagram/android/a/d;->b(Ljava/lang/String;)Lcom/instagram/venue/model/Venue;
move-result-object v0
if-nez v0, :cond_a
iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/a/d;->d:Landroid/location/Location;
invoke-static {v0, v1}, Lcom/instagram/venue/a/a;->a(Ljava/lang/String;Landroid/location/Location;)Lcom/instagram/venue/model/Venue;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->j()V
invoke-direct {p0, v0}, Lcom/instagram/android/a/d;->a(Lcom/instagram/venue/model/Venue;)V
invoke-direct {p0}, Lcom/instagram/android/a/d;->f()V
goto :goto_a
:cond_36
const/4 v0, 0x0
goto :goto_a
:pswitch_data_38
.packed-switch 0x0
:pswitch_18
.end packed-switch
.end method
.method public final a(Landroid/location/Location;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/a/d;->d:Landroid/location/Location;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/instagram/android/a/d;->d()V
invoke-virtual {p0}, Lcom/instagram/android/a/d;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Ljava/util/List;Z)V
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/a/d;->e:Z
iput-boolean p2, p0, Lcom/instagram/android/a/d;->f:Z
iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0}, Lcom/instagram/android/a/d;->notifyDataSetChanged()V
return-void
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/a/d;->e:Z
invoke-virtual {p0}, Lcom/instagram/android/a/d;->notifyDataSetChanged()V
return-void
.end method
.method public final b(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I
move-result v2
if-nez v2, :cond_9
:goto_8
:cond_8
return v0
:cond_9
invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I
move-result v2
if-lt p1, v2, :cond_8
sub-int v2, p1, v2
if-ne v2, v1, :cond_8
move v0, v1
goto :goto_8
.end method
.method public final getCount()I
.registers 4
const/4 v1, 0x1
invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I
move-result v0
iget-boolean v2, p0, Lcom/instagram/android/a/d;->f:Z
if-eqz v2, :cond_b
add-int/lit8 v0, v0, 0x1
:cond_b
invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I
move-result v2
if-ne v2, v1, :cond_14
add-int/lit8 v0, v0, 0x2
:cond_13
:goto_13
return v0
:cond_14
if-nez v0, :cond_13
iget-boolean v2, p0, Lcom/instagram/android/a/d;->e:Z
if-eqz v2, :cond_13
move v0, v1
goto :goto_13
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/a/d;->a(I)Lcom/instagram/venue/model/Venue;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 5
const/4 v0, 0x1
invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I
move-result v1
if-ge p1, v1, :cond_9
const/4 v0, 0x2
:pswitch_8
:goto_8
return v0
:cond_9
invoke-virtual {p0}, Lcom/instagram/android/a/d;->isEmpty()Z
move-result v2
if-eqz v2, :cond_11
const/4 v0, 0x3
goto :goto_8
:cond_11
sub-int v1, p1, v1
invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I
move-result v2
if-ne v2, v0, :cond_1c
packed-switch v1, :pswitch_data_2e
:cond_1c
invoke-virtual {p0}, Lcom/instagram/android/a/d;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_2c
iget-boolean v0, p0, Lcom/instagram/android/a/d;->f:Z
if-eqz v0, :cond_2c
const/4 v0, 0x4
goto :goto_8
:pswitch_2a
const/4 v0, 0x0
goto :goto_8
:cond_2c
const/4 v0, -0x2
goto :goto_8
:pswitch_data_2e
.packed-switch 0x0
:pswitch_2a
:pswitch_8
.end packed-switch
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-virtual {p0, p1}, Lcom/instagram/android/a/d;->getItemViewType(I)I
move-result v0
if-nez p2, :cond_a
invoke-direct {p0, v0, p3}, Lcom/instagram/android/a/d;->a(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_a
invoke-direct {p0, p1, v0, p2}, Lcom/instagram/android/a/d;->a(IILandroid/view/View;)V
return-object p2
.end method
.method public final getViewTypeCount()I
.registers 2
const/4 v0, 0x5
return v0
.end method
.method public final hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isEmpty()Z
.registers 2
invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I
move-result v0
if-nez v0, :cond_e
invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
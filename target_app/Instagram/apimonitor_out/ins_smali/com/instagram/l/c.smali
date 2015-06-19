.class public final Lcom/instagram/l/c;
.super Ljava/lang/Object;
.source "Experiments.java"
.field public static final a:Lcom/instagram/l/a;
.field public static final b:Lcom/instagram/l/a;
.field public static final c:Lcom/instagram/l/a;
.field public static final d:Lcom/instagram/l/a;
.field public static final e:Lcom/instagram/l/a;
.field public static final f:Lcom/instagram/l/b;
.field public static final g:Lcom/instagram/l/b;
.field public static final h:Lcom/instagram/l/b;
.field public static final i:Lcom/instagram/l/b;
.field public static final j:[Lcom/instagram/l/b;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/instagram/l/a;
const-string v1, "ig_android_find_friends_show_follow_destination"
invoke-direct {v0, v1}, Lcom/instagram/l/a;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->a:Lcom/instagram/l/a;
new-instance v0, Lcom/instagram/l/a;
const-string v1, "ig_android_single_feed_follow_button_2"
invoke-direct {v0, v1}, Lcom/instagram/l/a;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->b:Lcom/instagram/l/a;
new-instance v0, Lcom/instagram/l/a;
const-string v1, "ig_android_fixed_brightness_for_camera_only"
invoke-direct {v0, v1}, Lcom/instagram/l/a;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->c:Lcom/instagram/l/a;
new-instance v0, Lcom/instagram/l/a;
const-string v1, "ig_android_follow_button_large_everywhere"
invoke-direct {v0, v1}, Lcom/instagram/l/a;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;
new-instance v0, Lcom/instagram/l/a;
const-string v1, "ig_android_typeahead_search"
invoke-direct {v0, v1}, Lcom/instagram/l/a;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->e:Lcom/instagram/l/a;
new-instance v0, Lcom/instagram/l/b;
const-string v1, "ig_android_registration_local_push"
const-string v2, "push_variations"
const-string v3, "none"
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->f:Lcom/instagram/l/b;
new-instance v0, Lcom/instagram/l/b;
const-string v1, "ig_android_phone_reg_canary"
const-string v2, "method"
const-string v3, "email_only"
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->g:Lcom/instagram/l/b;
new-instance v0, Lcom/instagram/l/b;
const-string v1, "ig_android_phone_reg_world"
const-string v2, "method"
const-string v3, "email_only"
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->h:Lcom/instagram/l/b;
new-instance v0, Lcom/instagram/l/b;
const-string v1, "ig_android_large_img_upload_multi"
const-string v2, "size"
const-string v3, "640"
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/l/c;->i:Lcom/instagram/l/b;
const/16 v0, 0x9
new-array v0, v0, [Lcom/instagram/l/b;
const/4 v1, 0x0
sget-object v2, Lcom/instagram/l/c;->f:Lcom/instagram/l/b;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/instagram/l/c;->g:Lcom/instagram/l/b;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/instagram/l/c;->h:Lcom/instagram/l/b;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lcom/instagram/l/c;->a:Lcom/instagram/l/a;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/instagram/l/c;->i:Lcom/instagram/l/b;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lcom/instagram/l/c;->b:Lcom/instagram/l/a;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/instagram/l/c;->c:Lcom/instagram/l/a;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/instagram/l/c;->e:Lcom/instagram/l/a;
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/l/c;->j:[Lcom/instagram/l/b;
return-void
.end method
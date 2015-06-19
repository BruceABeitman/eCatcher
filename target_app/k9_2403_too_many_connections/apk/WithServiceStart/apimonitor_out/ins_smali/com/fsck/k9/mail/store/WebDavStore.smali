.class public Lcom/fsck/k9/mail/store/WebDavStore;
.super Lcom/fsck/k9/mail/Store;
.source "WebDavStore.java"
.field public static final CONNECTION_SECURITY_NONE:I = 0x0
.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4
.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3
.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1
.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2
.field private static DAV_MAIL_SEND_FOLDER:Ljava/lang/String;
.field private static DAV_MAIL_TMP_FOLDER:Ljava/lang/String;
.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;
.field private alias:Ljava/lang/String;
.field private mAuthCookies:Lorg/apache/http/client/CookieStore;
.field private mAuthPath:Ljava/lang/String;
.field private mAuthString:Ljava/lang/String;
.field private mAuthTimeout:J
.field private mAuthenticated:Z
.field private mConnectionSecurity:I
.field private mFolderList:Ljava/util/HashMap;
.field private mHost:Ljava/lang/String;
.field private mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
.field private mLastAuth:J
.field private mMailboxPath:Ljava/lang/String;
.field private mPassword:Ljava/lang/String;
.field private mPath:Ljava/lang/String;
.field private mRedirectUrl:Ljava/lang/String;
.field private mSecure:Z
.field private mUri:Ljava/net/URI;
.field private mUrl:Ljava/lang/String;
.field private mUsername:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Lcom/fsck/k9/mail/Flag;
const/4 v1, 0x0
sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;
const-string v0, "##DavMailSubmissionURI##"
sput-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->DAV_MAIL_SEND_FOLDER:Ljava/lang/String;
const-string v0, "drafts"
sput-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->DAV_MAIL_TMP_FOLDER:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 14
invoke-direct {p0}, Lcom/fsck/k9/mail/Store;-><init>()V
const/4 v9, 0x0
iput-boolean v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
const-wide/16 v9, -0x1
iput-wide v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mLastAuth:J
const-wide/16 v9, 0x12c
iput-wide v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthTimeout:J
new-instance v9, Ljava/util/HashMap;
invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mFolderList:Ljava/util/HashMap;
const/4 v9, 0x0
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
:try_start_18
new-instance v9, Ljava/net/URI;
invoke-direct {v9, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
:try_end_1f
.catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_1f} :catch_92
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v5
const-string v9, "webdav"
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_9c
const/4 v9, 0x0
iput v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
:goto_30
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
const-string v10, "http"
invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_54
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
const-string v10, "://"
const/4 v11, 0x2
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v1
array-length v9, v1
const/4 v10, 0x1
if-le v9, v10, :cond_54
const/4 v9, 0x1
aget-object v9, v1, v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
:cond_54
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v9
const-string v10, "\\|"
invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
const/4 v2, 0x0
array-length v0, v4
:goto_62
if-ge v2, v0, :cond_14a
if-nez v2, :cond_e1
const/4 v9, 0x0
aget-object v9, v4, v9
if-eqz v9, :cond_dc
const/4 v9, 0x0
aget-object v9, v4, v9
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
const/4 v10, 0x1
if-le v9, v10, :cond_dc
const/4 v9, 0x0
aget-object v9, v4, v9
const/4 v10, 0x1
invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v9
const-string v10, ""
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_d7
const/4 v9, 0x0
aget-object v9, v4, v9
const/4 v10, 0x1
invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
:cond_8f
:goto_8f
add-int/lit8 v2, v2, 0x1
goto :goto_62
:catch_92
move-exception v9
move-object v6, v9
new-instance v9, Lcom/fsck/k9/mail/MessagingException;
const-string v10, "Invalid WebDavStore URI"
invoke-direct {v9, v10, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v9
:cond_9c
const-string v9, "webdav+ssl"
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_a8
const/4 v9, 0x4
iput v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
goto :goto_30
:cond_a8
const-string v9, "webdav+ssl+"
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_b5
const/4 v9, 0x3
iput v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
goto/16 :goto_30
:cond_b5
const-string v9, "webdav+tls"
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_c2
const/4 v9, 0x1
iput v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
goto/16 :goto_30
:cond_c2
const-string v9, "webdav+tls+"
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_cf
const/4 v9, 0x2
iput v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
goto/16 :goto_30
:cond_cf
new-instance v9, Lcom/fsck/k9/mail/MessagingException;
const-string v10, "Unsupported protocol"
invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v9
:cond_d7
const-string v9, ""
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
goto :goto_8f
:cond_dc
const-string v9, ""
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
goto :goto_8f
:cond_e1
const/4 v9, 0x1
if-ne v2, v9, :cond_10c
const/4 v9, 0x1
aget-object v9, v4, v9
if-eqz v9, :cond_8f
const/4 v9, 0x1
aget-object v9, v4, v9
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
const/4 v10, 0x1
if-le v9, v10, :cond_8f
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "/"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const/4 v10, 0x1
aget-object v10, v4, v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
goto :goto_8f
:cond_10c
const/4 v9, 0x2
if-ne v2, v9, :cond_8f
const/4 v9, 0x2
aget-object v9, v4, v9
if-eqz v9, :cond_8f
const/4 v9, 0x2
aget-object v9, v4, v9
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
const/4 v10, 0x1
if-le v9, v10, :cond_8f
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "/"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const/4 v10, 0x2
aget-object v10, v4, v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
if-eqz v9, :cond_144
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
const-string v10, ""
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_8f
:cond_144
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
goto/16 :goto_8f
:cond_14a
iget-object v3, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v9
if-lez v9, :cond_16f
const-string v9, "/"
invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v9
if-nez v9, :cond_16f
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "/"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:cond_16f
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getRoot()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v9
if-eqz v9, :cond_1bb
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v9
const-string v10, ":"
const/4 v11, 0x2
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v7
const/4 v9, 0x0
aget-object v9, v7, v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;
const-string v10, "/"
const/4 v11, 0x2
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v8
array-length v9, v8
const/4 v10, 0x1
if-le v9, v10, :cond_1f8
const/4 v9, 0x1
aget-object v9, v8, v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->alias:Ljava/lang/String;
:goto_1b2
array-length v9, v7
const/4 v10, 0x1
if-le v9, v10, :cond_1bb
const/4 v9, 0x1
aget-object v9, v7, v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPassword:Ljava/lang/String;
:cond_1bb
iget v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
const/4 v10, 0x3
if-ne v9, v10, :cond_1fd
const/4 v9, 0x1
:goto_1c1
iput-boolean v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mSecure:Z
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "Basic "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ":"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPassword:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Lcom/fsck/k9/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;
return-void
:cond_1f8
iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;
iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->alias:Ljava/lang/String;
goto :goto_1b2
:cond_1fd
const/4 v9, 0x0
goto :goto_1c1
.end method
.method static synthetic access$002(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
return-object p1
.end method
.method static synthetic access$100()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->DAV_MAIL_SEND_FOLDER:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1000(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1100(Lcom/fsck/k9/mail/store/WebDavStore;)Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
return v0
.end method
.method static synthetic access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1300(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageFlagsXml([Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1400(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageEnvelopeXml([Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1500()[Lcom/fsck/k9/mail/Flag;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;
return-object v0
.end method
.method static synthetic access$1600(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/WebDavStore;->getMarkMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$300(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/WebDavStore;->getMoveOrCopyMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$400(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
.registers 7
invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v0
return-object v0
.end method
.method static synthetic access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageCountXml(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$600(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v0
return-object v0
.end method
.method static synthetic access$700(Lcom/fsck/k9/mail/store/WebDavStore;)Lorg/apache/http/client/CookieStore;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;
return-object v0
.end method
.method static synthetic access$800(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessagesXml()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$900(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageUrlsXml([Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getFolderListXml()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
const/16 v1, 0xc8
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v1, "<?xml version=\'1.0\' ?>"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "SELECT \"DAV:uid\", \"DAV:ishidden\"\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, " FROM SCOPE(\'deep traversal of \""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\"\')\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=True\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "</a:sql></a:searchrequest>\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static getHttpRequestResponse(Lorg/apache/http/HttpEntity;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
.registers 9
const/16 v6, 0x2000
const-string v2, ""
const-string v1, ""
if-eqz p1, :cond_30
new-instance v0, Ljava/io/BufferedReader;
new-instance v4, Ljava/io/InputStreamReader;
invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v0, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
const-string v3, ""
:goto_18
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_30
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_18
:cond_30
if-eqz p0, :cond_62
new-instance v0, Ljava/io/BufferedReader;
new-instance v4, Ljava/io/InputStreamReader;
invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v0, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
const-string v3, ""
:goto_42
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_5a
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_42
:cond_5a
const-string v4, "password=.*?&"
const-string v5, "password=(omitted)&"
invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_62
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Request: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\n\nResponse: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method private getMarkMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
.registers 8
new-instance v0, Ljava/lang/StringBuffer;
const/16 v3, 0x258
invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v3, "<?xml version=\'1.0\' ?>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "<a:propertyupdate xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "<a:target>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v2, 0x0
array-length v1, p1
:goto_18
if-ge v2, v1, :cond_3b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, " <a:href>"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, p1, v2
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "</a:href>\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_18
:cond_3b
const-string v3, "</a:target>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "<a:set>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " <a:prop>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "  <b:read>"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
if-eqz p2, :cond_7e
const-string v4, "1"
:goto_59
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "</b:read>\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " </a:prop>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "</a:set>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "</a:propertyupdate>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:cond_7e
const-string v4, "0"
goto :goto_59
.end method
.method private getMessageCountXml(Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
const/16 v1, 0xc8
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v1, "<?xml version=\'1.0\' ?>"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "SELECT \"DAV:visiblecount\"\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, " FROM \"\"\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND \"urn:schemas:httpmail:read\"="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, " GROUP BY \"DAV:ishidden\"\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "</a:sql></a:searchrequest>\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private getMessageEnvelopeXml([Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuffer;
const/16 v3, 0xc8
invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v3, "<?xml version=\'1.0\' ?>"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "SELECT \"DAV:uid\", \"DAV:getcontentlength\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:mime-version\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:content-type\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:subject\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:date\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:thread-topic\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:thread-index\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:from\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:to\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:in-reply-to\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:mailheader:cc\","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \"urn:schemas:httpmail:read\""
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " \r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " FROM \"\"\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v2, 0x0
array-length v1, p1
:goto_5e
if-ge v2, v1, :cond_88
if-eqz v2, :cond_67
const-string v3, "  OR "
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_67
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, " \"DAV:uid\"=\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, p1, v2
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\' "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_5e
:cond_88
const-string v3, "\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "</a:sql></a:searchrequest>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private getMessageFlagsXml([Ljava/lang/String;)Ljava/lang/String;
.registers 7
array-length v3, p1
if-nez v3, :cond_b
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "Attempt to get flags on 0 length array for uids"
invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v3
:cond_b
new-instance v0, Ljava/lang/StringBuffer;
const/16 v3, 0xc8
invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v3, "<?xml version=\'1.0\' ?>"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " FROM \"\"\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v2, 0x0
array-length v1, p1
:goto_2d
if-ge v2, v1, :cond_57
if-eqz v2, :cond_36
const-string v3, " OR "
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_36
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, " \"DAV:uid\"=\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, p1, v2
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\' "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_2d
:cond_57
const-string v3, "\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "</a:sql></a:searchrequest>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private getMessageUrlsXml([Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuffer;
const/16 v3, 0x258
invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v3, "<?xml version=\'1.0\' ?>"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " FROM \"\"\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v2, 0x0
array-length v1, p1
:goto_22
if-ge v2, v1, :cond_4c
if-eqz v2, :cond_2b
const-string v3, "  OR "
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_2b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, " \"DAV:uid\"=\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, p1, v2
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\' "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_22
:cond_4c
const-string v3, "\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "</a:sql></a:searchrequest>\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private getMessagesXml()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
const/16 v1, 0xc8
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v1, "<?xml version=\'1.0\' ?>"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "SELECT \"DAV:uid\"\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, " FROM \"\"\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "</a:sql></a:searchrequest>\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private getMoveOrCopyMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
.registers 9
if-eqz p2, :cond_57
const-string v4, "move"
move-object v0, v4
:goto_5
new-instance v1, Ljava/lang/StringBuffer;
const/16 v4, 0x258
invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v4, "<?xml version=\'1.0\' ?>\r\n"
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "<a:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v4, "<a:target>\r\n"
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v3, 0x0
array-length v2, p1
:goto_34
if-ge v3, v2, :cond_5b
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, " <a:href>"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
aget-object v5, p1, v3
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "</a:href>\r\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v3, v3, 0x1
goto :goto_34
:cond_57
const-string v4, "copy"
move-object v0, v4
goto :goto_5
:cond_5b
const-string v4, "</a:target>\r\n"
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "</a:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ">\r\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method private getRoot()Ljava/lang/String;
.registers 4
iget v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
const/4 v2, 0x2
if-eq v1, v2, :cond_14
iget v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
const/4 v2, 0x3
if-eq v1, v2, :cond_14
iget v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
const/4 v2, 0x1
if-eq v1, v2, :cond_14
iget v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:I
const/4 v2, 0x4
if-ne v1, v2, :cond_40
:cond_14
const-string v0, "https"
:goto_16
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
invoke-virtual {v2}, Ljava/net/URI;->getPort()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_40
const-string v0, "http"
goto :goto_16
.end method
.method private processException(Ljava/lang/Throwable;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v1, Ljava/io/PrintStream;
invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method private processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
.registers 11
const/4 v5, 0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v0
return-object v0
.end method
.method private processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
.registers 27
new-instance v9, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-object v0, v9
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v3, :cond_47
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "processRequest url = \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\', method = \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\', messageBody = \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_47
if-eqz p1, :cond_4b
if-nez p2, :cond_4d
:cond_4b
move-object v10, v9
:goto_4c
return-object v10
:cond_4d
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
const/4 v6, 0x0
if-eqz p3, :cond_61
:try_start_53
new-instance v13, Lorg/apache/http/entity/StringEntity;
move-object v0, v13
move-object/from16 v1, p3
invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
:try_end_5b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_53 .. :try_end_5b} :catch_dc
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_5b} :catch_14b
:try_start_5b
const-string v3, "text/xml"
invoke-virtual {v13, v3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
:try_end_60
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5b .. :try_end_60} :catch_182
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_17e
move-object v6, v13
:cond_61
const/4 v8, 0x1
move-object/from16 v3, p0
move-object/from16 v4, p1
move-object/from16 v5, p2
move-object/from16 v7, p4
:try_start_6a
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
:try_end_6d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_6a .. :try_end_6d} :catch_dc
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_14b
move-result-object v12
if-eqz v12, :cond_9e
if-eqz p5, :cond_9e
:try_start_72
invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
move-result-object v20
new-instance v14, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;
move-object v0, v14
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
move-object/from16 v0, v20
move-object v1, v14
invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
new-instance v3, Lorg/xml/sax/InputSource;
invoke-direct {v3, v12}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
move-object/from16 v0, v20
move-object v1, v3
invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
invoke-virtual {v14}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->getDataSet()Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
:try_end_9a
.catch Lorg/xml/sax/SAXException; {:try_start_72 .. :try_end_9a} :catch_a0
.catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_72 .. :try_end_9a} :catch_118
.catch Ljava/io/UnsupportedEncodingException; {:try_start_72 .. :try_end_9a} :catch_dc
.catch Ljava/io/IOException; {:try_start_72 .. :try_end_9a} :catch_14b
move-result-object v9
:try_start_9b
invoke-virtual {v12}, Ljava/io/InputStream;->close()V
:cond_9e
move-object v10, v9
goto :goto_4c
:catch_a0
move-exception v3
move-object/from16 v16, v3
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "SAXException in processRequest() "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v4
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTrace: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "SAXException in processRequest() "
move-object v0, v3
move-object v1, v4
move-object/from16 v2, v16
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:try_end_dc
.catch Ljava/io/UnsupportedEncodingException; {:try_start_9b .. :try_end_dc} :catch_dc
.catch Ljava/io/IOException; {:try_start_9b .. :try_end_dc} :catch_14b
:catch_dc
move-exception v3
move-object/from16 v19, v3
:goto_df
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "UnsupportedEncodingException: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v4
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTrace: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "UnsupportedEncodingException in processRequest() "
move-object v0, v3
move-object v1, v4
move-object/from16 v2, v19
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:catch_118
move-exception v3
move-object v15, v3
:try_start_11a
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "ParserConfigurationException in processRequest() "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTrace: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
move-object v1, v15
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "ParserConfigurationException in processRequest() "
invoke-direct {v3, v4, v15}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:catch_14b
:try_end_14b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_11a .. :try_end_14b} :catch_dc
.catch Ljava/io/IOException; {:try_start_11a .. :try_end_14b} :catch_14b
move-exception v3
move-object v11, v3
:goto_14d
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "IOException: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTrace: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
move-object v1, v11
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "IOException in processRequest() "
invoke-direct {v3, v4, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:catch_17e
move-exception v3
move-object v11, v3
move-object v6, v13
goto :goto_14d
:catch_182
move-exception v3
move-object/from16 v19, v3
move-object v6, v13
goto/16 :goto_df
.end method
.method private sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
.registers 27
const/4 v15, 0x0
if-eqz p1, :cond_5
if-nez p2, :cond_8
:cond_5
move-object/from16 v16, v15
:goto_7
return-object v16
:cond_8
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
move-result-object v11
const/16 v19, -0x1
const/16 v17, 0x0
:try_start_10
new-instance v12, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
move-object v0, v12
move-object/from16 v1, p0
move-object/from16 v2, p1
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
if-eqz p3, :cond_22
move-object v0, v12
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V
:cond_22
invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v13
:goto_2a
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_7f
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
move-object/from16 v0, p4
move-object v1, v10
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {v12, v10, v3}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_end_42
.catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_42} :catch_43
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_42} :catch_dc
goto :goto_2a
:catch_43
move-exception v3
move-object/from16 v20, v3
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "UnsupportedEncodingException: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v4
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTrace: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "UnsupportedEncodingException"
move-object v0, v3
move-object v1, v4
move-object/from16 v2, v20
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:cond_7f
:try_start_7f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;
move-object v3, v0
if-eqz v3, :cond_97
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
move v3, v0
if-eqz v3, :cond_97
const-string v3, "Authorization"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;
move-object v4, v0
invoke-virtual {v12, v3, v4}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_97
move-object v0, v12
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V
invoke-virtual {v11, v12}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v18
invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v3
invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v19
invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v9
const/16 v3, 0x191
move/from16 v0, v19
move v1, v3
if-ne v0, v1, :cond_10f
if-eqz p5, :cond_d4
const/4 v3, 0x1
move v0, v3
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
const/4 v8, 0x0
move-object/from16 v3, p0
move-object/from16 v4, p1
move-object/from16 v5, p2
move-object/from16 v6, p3
move-object/from16 v7, p4
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
:cond_ca
:goto_ca
if-eqz v9, :cond_d0
invoke-static {v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
move-result-object v15
:cond_d0
move-object/from16 v16, v15
goto/16 :goto_7
:cond_d4
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "Invalid username or password for Basic authentication"
invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v3
:try_end_dc
.catch Ljava/io/UnsupportedEncodingException; {:try_start_7f .. :try_end_dc} :catch_43
.catch Ljava/io/IOException; {:try_start_7f .. :try_end_dc} :catch_dc
:catch_dc
move-exception v3
move-object v14, v3
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "IOException: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTrace: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
move-object v1, v14
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "IOException"
invoke-direct {v3, v4, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:cond_10f
const/16 v3, 0x1b8
move/from16 v0, v19
move v1, v3
if-ne v0, v1, :cond_132
if-eqz p5, :cond_12a
:try_start_118
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->doFBA()V
const/4 v8, 0x0
move-object/from16 v3, p0
move-object/from16 v4, p1
move-object/from16 v5, p2
move-object/from16 v6, p3
move-object/from16 v7, p4
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
goto :goto_ca
:cond_12a
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "Authentication failure in sendRequest"
invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v3
:cond_132
const/16 v3, 0xc8
move/from16 v0, v19
move v1, v3
if-lt v0, v1, :cond_140
const/16 v3, 0x12c
move/from16 v0, v19
move v1, v3
if-lt v0, v1, :cond_172
:cond_140
new-instance v3, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error during request processing: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\n\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, v17
move-object v1, v9
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpRequestResponse(Lorg/apache/http/HttpEntity;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:cond_172
if-eqz p5, :cond_ca
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
move v3, v0
if-nez v3, :cond_ca
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->doFBA()V
const/4 v8, 0x0
move-object/from16 v3, p0
move-object/from16 v4, p1
move-object/from16 v5, p2
move-object/from16 v6, p3
move-object/from16 v7, p4
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
:try_end_18c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_118 .. :try_end_18c} :catch_43
.catch Ljava/io/IOException; {:try_start_118 .. :try_end_18c} :catch_dc
goto/16 :goto_ca
.end method
.method public authenticate()V
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->doFBA()V
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_b
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;
if-nez v1, :cond_3a
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
:goto_a
return-void
:catch_b
move-exception v0
const-string v1, "k9"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Error during authentication: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\nStack: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v1, Lcom/fsck/k9/mail/MessagingException;
const-string v2, "Error during authentication"
invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_3a
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-wide/16 v3, 0x3e8
div-long/2addr v1, v3
iput-wide v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mLastAuth:J
goto :goto_a
.end method
.method public checkSettings()V
.registers 3
const-string v0, "k9"
const-string v1, "WebDavStore.checkSettings() not implemented"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public doFBA()V
.registers 33
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
move-object/from16 v28, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;
move-object/from16 v30, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mPassword:Ljava/lang/String;
move-object/from16 v22, v0
const-string v3, "/"
move-object/from16 v0, v28
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v29
const-string v4, ""
const-string v9, ""
const-string v15, ""
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
move-object v3, v0
if-eqz v3, :cond_6d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
move-object v3, v0
const-string v5, ""
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_6d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
move-object v3, v0
const-string v5, "/"
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_6d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
move-object v14, v0
:goto_47
const/16 v18, 0x0
:goto_49
const/4 v3, 0x2
move/from16 v0, v18
move v1, v3
if-gt v0, v1, :cond_73
if-eqz v18, :cond_70
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, v29, v18
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
:goto_6a
add-int/lit8 v18, v18, 0x1
goto :goto_49
:cond_6d
const-string v14, "/exchweb/bin/auth/owaauth.dll"
goto :goto_47
:cond_70
aget-object v4, v29, v18
goto :goto_6a
:cond_73
const-string v3, ""
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_83
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "doFBA failed, unable to construct URL to post login credentials to."
invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v3
:cond_83
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
:try_start_94
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
move-object v3, v0
if-eqz v3, :cond_bb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
move-object v3, v0
const-string v5, ""
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_bb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
move-object v3, v0
const-string v5, "/"
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_207
:cond_bb
new-instance v3, Lcom/fsck/k9/mail/store/WebDavStore$1;
move-object v0, v3
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$1;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
move-object/from16 v0, v17
move-object v1, v3
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
const-string v5, "GET"
const/4 v6, 0x0
const/4 v8, 0x0
move-object/from16 v3, p0
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
move-result-object v19
if-eqz v19, :cond_207
new-instance v23, Ljava/io/BufferedReader;
new-instance v3, Ljava/io/InputStreamReader;
move-object v0, v3
move-object/from16 v1, v19
invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
const/16 v5, 0x1000
move-object/from16 v0, v23
move-object v1, v3
move v2, v5
invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
const-string v25, ""
const/16 v20, 0x0
:cond_f1
:goto_f1
invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v25
if-eqz v25, :cond_204
if-nez v20, :cond_204
const-string v3, " action"
move-object/from16 v0, v25
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ltz v3, :cond_19a
const-string v3, "\""
move-object/from16 v0, v25
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v24
const/4 v3, 0x1
aget-object v3, v24, v3
const/16 v5, 0x2f
invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I
move-result v3
if-gez v3, :cond_1c3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object v3, v0
if-eqz v3, :cond_1c3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object v3, v0
const-string v5, ""
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1c3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object v3, v0
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object v6, v0
const/16 v7, 0x3f
invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I
move-result v6
invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object v3, v0
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object v6, v0
const/16 v7, 0x2f
invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I
move-result v6
invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
move-object v5, v0
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "/"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v5, 0x1
aget-object v5, v24, v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "/"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v5, 0x1
aget-object v5, v24, v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
:cond_19a
:goto_19a
const-string v3, "destination"
move-object/from16 v0, v25
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ltz v3, :cond_f1
const-string v3, "value"
move-object/from16 v0, v25
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v24
const/4 v3, 0x1
aget-object v3, v24, v3
if-eqz v3, :cond_f1
const/4 v3, 0x1
aget-object v3, v24, v3
const-string v5, "\""
invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v31
const/4 v3, 0x1
aget-object v15, v31, v3
const/16 v20, 0x1
goto/16 :goto_f1
:cond_1c3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v5, 0x1
aget-object v5, v24, v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "/"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v5, 0x1
aget-object v5, v24, v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;
:try_end_1f2
.catch Ljavax/net/ssl/SSLException; {:try_start_94 .. :try_end_1f2} :catch_1f3
goto :goto_19a
:catch_1f3
move-exception v3
move-object/from16 v16, v3
new-instance v3, Lcom/fsck/k9/mail/CertificateValidationException;
invoke-virtual/range {v16 .. v16}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;
move-result-object v4
move-object v0, v3
move-object v1, v4
move-object/from16 v2, v16
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:cond_204
:try_start_204
invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
:cond_207
new-instance v21, Ljava/util/ArrayList;
invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "username"
move-object v0, v3
move-object v1, v5
move-object/from16 v2, v30
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "password"
move-object v0, v3
move-object v1, v5
move-object/from16 v2, v22
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
move-object v3, v0
if-eqz v3, :cond_2ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
move-object v3, v0
const-string v5, ""
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2ef
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "destination"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
move-object v7, v0
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_265
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "flags"
const-string v6, "0"
invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "SubmitCreds"
const-string v6, "Log+On"
invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "forcedownlevel"
const-string v6, "0"
invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "trusted"
const-string v6, "0"
invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_start_2a1
:try_end_2a1
.catch Ljavax/net/ssl/SSLException; {:try_start_204 .. :try_end_2a1} :catch_1f3
new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
move-object v0, v11
move-object/from16 v1, v21
invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
const-string v26, ""
const-string v10, "POST"
const/4 v13, 0x0
move-object/from16 v8, p0
move-object v12, v7
invoke-direct/range {v8 .. v13}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
move-result-object v19
if-eqz v19, :cond_319
new-instance v23, Ljava/io/BufferedReader;
new-instance v3, Ljava/io/InputStreamReader;
move-object v0, v3
move-object/from16 v1, v19
invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
const/16 v5, 0x2000
move-object/from16 v0, v23
move-object v1, v3
move v2, v5
invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
const-string v25, ""
:cond_2d1
:goto_2d1
invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v25
if-eqz v25, :cond_319
const-string v3, "BASE href"
move-object/from16 v0, v25
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ltz v3, :cond_2d1
const-string v3, "\""
move-object/from16 v0, v25
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v24
const/4 v3, 0x1
aget-object v26, v24, v3
:try_end_2ee
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2a1 .. :try_end_2ee} :catch_38e
.catch Ljavax/net/ssl/SSLException; {:try_start_2a1 .. :try_end_2ee} :catch_1f3
goto :goto_2d1
:cond_2ef
if-eqz v15, :cond_308
:try_start_2f1
const-string v3, ""
invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_308
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "destination"
invoke-direct {v3, v5, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_265
:cond_308
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "destination"
const-string v6, "/"
invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_317
.catch Ljavax/net/ssl/SSLException; {:try_start_2f1 .. :try_end_317} :catch_1f3
goto/16 :goto_265
:try_start_319
:cond_319
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
move-object v3, v0
if-eqz v3, :cond_35b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
move-object v3, v0
const-string v5, ""
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_35b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;
move-object v4, v0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
:goto_354
:try_end_354
.catch Ljava/io/UnsupportedEncodingException; {:try_start_319 .. :try_end_354} :catch_38e
.catch Ljavax/net/ssl/SSLException; {:try_start_319 .. :try_end_354} :catch_1f3
const/4 v3, 0x1
move v0, v3
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
return-void
:try_start_35b
:cond_35b
const-string v3, ""
move-object/from16 v0, v26
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3ca
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/Exchange/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->alias:Ljava/lang/String;
move-object v4, v0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
:try_end_38d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_35b .. :try_end_38d} :catch_38e
.catch Ljavax/net/ssl/SSLException; {:try_start_35b .. :try_end_38d} :catch_1f3
goto :goto_354
:catch_38e
move-exception v3
move-object/from16 v27, v3
:try_start_391
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error encoding POST data for authentication: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v4
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTrace: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
move-object/from16 v1, v27
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Lcom/fsck/k9/mail/MessagingException;
const-string v4, "Error encoding POST data for authentication"
move-object v0, v3
move-object v1, v4
move-object/from16 v2, v27
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:try_end_3ca
.catch Ljavax/net/ssl/SSLException; {:try_start_391 .. :try_end_3ca} :catch_1f3
:cond_3ca
:try_start_3ca
move-object/from16 v0, v26
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
:try_end_3d0
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3ca .. :try_end_3d0} :catch_38e
.catch Ljavax/net/ssl/SSLException; {:try_start_3ca .. :try_end_3d0} :catch_1f3
goto :goto_354
.end method
.method public getAlias()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->alias:Ljava/lang/String;
return-object v0
.end method
.method public getAuthCookies()Lorg/apache/http/client/CookieStore;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;
return-object v0
.end method
.method public getAuthString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;
return-object v0
.end method
.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
.registers 4
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mFolderList:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
if-nez v0, :cond_f
new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
invoke-direct {v0, p0, p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
:cond_f
return-object v0
.end method
.method public getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
.registers 14
const-string v12, "k9"
const-string v11, "NoSuchAlgorithmException in getHttpClient: "
const-string v5, "KeyManagementException in getHttpClient: "
const/4 v7, 0x0
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
if-nez v0, :cond_13
new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
invoke-direct {v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
const/4 v7, 0x1
:cond_13
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
move-result-object v9
:try_start_1d
new-instance v10, Lorg/apache/http/conn/scheme/Scheme;
const-string v0, "https"
new-instance v1, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;
iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mSecure:Z
invoke-direct {v1, v2, v3}, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;-><init>(Ljava/lang/String;Z)V
const/16 v2, 0x1bb
invoke-direct {v10, v0, v1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
:try_end_2f
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_2f} :catch_46
.catch Ljava/security/KeyManagementException; {:try_start_1d .. :try_end_2f} :catch_79
invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
if-eqz v7, :cond_43
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
const-string v2, "GET"
const/4 v3, 0x0
const/4 v5, 0x0
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
:cond_43
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
return-object v0
:catch_46
move-exception v0
move-object v8, v0
const-string v0, "k9"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "NoSuchAlgorithmException in getHttpClient: "
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "NoSuchAlgorithmException in getHttpClient: "
invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:catch_79
move-exception v0
move-object v6, v0
const-string v0, "k9"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "KeyManagementException in getHttpClient: "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "KeyManagementException in getHttpClient: "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;
.registers 22
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
new-instance v11, Ljava/util/HashMap;
invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
new-instance v6, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-object v0, v6
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolderListXml()Ljava/lang/String;
move-result-object v14
const-string v19, "Brief"
const-string v20, "t"
move-object v0, v11
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
move-object/from16 v19, v0
const-string v20, "SEARCH"
move-object/from16 v0, p0
move-object/from16 v1, v19
move-object/from16 v2, v20
move-object v3, v14
move-object v4, v11
invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v6
invoke-virtual {v6}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getHrefs()[Ljava/lang/String;
move-result-object v9
move-object v0, v9
array-length v0, v0
move/from16 v16, v0
const/4 v12, 0x0
:goto_42
move v0, v12
move/from16 v1, v16
if-ge v0, v1, :cond_d0
aget-object v19, v9, v12
const-string v20, "/"
invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
array-length v0, v0
move/from16 v19, v0
const/16 v20, 0x1
sub-int v19, v19, v20
aget-object v8, v17, v19
const-string v10, ""
const-string v19, "INBOX"
move-object v0, v8
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_91
const-string v8, "INBOX"
:goto_69
new-instance v18, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
move-object/from16 v0, v18
move-object/from16 v1, p0
move-object/from16 v2, p0
move-object v3, v8
invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
aget-object v19, v9, v12
invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->setUrl(Ljava/lang/String;)V
move-object v0, v7
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mFolderList:Ljava/util/HashMap;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object v1, v8
move-object/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v12, v12, 0x1
goto :goto_42
:cond_91
const/4 v13, 0x5
move-object/from16 v0, v17
array-length v0, v0
move v5, v0
:goto_96
if-ge v13, v5, :cond_c1
const/16 v19, 0x5
move v0, v13
move/from16 v1, v19
if-eq v0, v1, :cond_be
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object v1, v10
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "/"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
aget-object v20, v17, v13
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
:goto_bb
add-int/lit8 v13, v13, 0x1
goto :goto_96
:cond_be
aget-object v10, v17, v13
goto :goto_bb
:try_start_c1
:cond_c1
const-string v19, "UTF-8"
move-object v0, v10
move-object/from16 v1, v19
invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_c9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_c1 .. :try_end_c9} :catch_cb
move-result-object v8
goto :goto_69
:catch_cb
move-exception v19
move-object/from16 v15, v19
move-object v8, v10
goto :goto_69
:cond_d0
const/16 v19, 0x0
move/from16 v0, v19
new-array v0, v0, [Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
move-object/from16 v19, v0
move-object v0, v7
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Lcom/fsck/k9/mail/Folder;
return-object p0
.end method
.method public getSendSpoolFolder()Lcom/fsck/k9/mail/Folder;
.registers 2
sget-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->DAV_MAIL_SEND_FOLDER:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v0
return-object v0
.end method
.method public getTrustedHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
.registers 10
const/16 v8, 0x1bb
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
if-nez v4, :cond_6a
new-instance v4, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
invoke-direct {v4}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;-><init>()V
iput-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
invoke-virtual {v4}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v4
invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
move-result-object v2
new-instance v3, Lorg/apache/http/conn/scheme/Scheme;
const-string v4, "https"
new-instance v5, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;
iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
iget-boolean v7, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mSecure:Z
invoke-direct {v5, v6, v7}, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;-><init>(Ljava/lang/String;Z)V
invoke-direct {v3, v4, v5, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPassword:Ljava/lang/String;
invoke-direct {v0, v4, v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
invoke-virtual {v4}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
move-result-object v1
new-instance v4, Lorg/apache/http/auth/AuthScope;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
const/16 v6, 0x50
sget-object v7, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v1, v4, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
new-instance v4, Lorg/apache/http/auth/AuthScope;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
sget-object v6, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
invoke-direct {v4, v5, v8, v6}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v1, v4, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
new-instance v4, Lorg/apache/http/auth/AuthScope;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;
iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
invoke-virtual {v6}, Ljava/net/URI;->getPort()I
move-result v6
sget-object v7, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;
invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v1, v4, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
invoke-virtual {v4, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
:cond_6a
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
return-object v4
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
return-object v0
.end method
.method public isCopyCapable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isMoveCapable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isSendCapable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public needAuth()Z
.registers 8
const/4 v2, 0x0
const-wide/16 v0, -0x1
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
if-nez v3, :cond_8
const/4 v2, 0x1
:cond_8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/16 v5, 0x3e8
div-long v0, v3, v5
iget-wide v3, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mLastAuth:J
sub-long v3, v0, v3
iget-wide v5, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthTimeout:J
cmp-long v3, v3, v5
if-lez v3, :cond_1b
const/4 v2, 0x1
:cond_1b
return v2
.end method
.method public sendMessages([Lcom/fsck/k9/mail/Message;)V
.registers 5
sget-object v2, Lcom/fsck/k9/mail/store/WebDavStore;->DAV_MAIL_TMP_FOLDER:Ljava/lang/String;
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v1
check-cast v1, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
:try_start_8
sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->appendWebDavMessages([Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Message;
move-result-object v0
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getSendSpoolFolder()Lcom/fsck/k9/mail/Folder;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1e
if-eqz v1, :cond_1d
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->close()V
:cond_1d
return-void
:catchall_1e
move-exception v2
if-eqz v1, :cond_24
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->close()V
:cond_24
throw v2
.end method
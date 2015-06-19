.class public Lcom/pinguo/camera360/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"
.field private static final KEYS:[Ljava/lang/String;
.field public static final TAG:Ljava/lang/String;
.field private mBtnClearLog:Landroid/widget/Button;
.field private mBtnGenLog:Landroid/widget/Button;
.field private mBtnUpload:Landroid/widget/Button;
.field private mKey:Ljava/lang/String;
.field private mSpinKey:Landroid/widget/Spinner;
.field private mTvLog:Landroid/widget/TextView;
.field private mTvLogname:Landroid/widget/TextView;
.field private mTvUploadInfo:Landroid/widget/TextView;
.field private msvLog:Landroid/widget/ScrollView;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/pinguo/camera360/FeedbackActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/FeedbackActivity;->TAG:Ljava/lang/String;
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
sget-object v2, Lcom/pinguo/camera360/lib/feedback/FLogger$KEY;->USER:Lcom/pinguo/camera360/lib/feedback/FLogger$KEY;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/feedback/FLogger$KEY;->name()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/pinguo/camera360/lib/feedback/FLogger$KEY;->PICTURE:Lcom/pinguo/camera360/lib/feedback/FLogger$KEY;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/feedback/FLogger$KEY;->name()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/camera360/FeedbackActivity;->KEYS:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic access$0()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/FeedbackActivity;->KEYS:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/FeedbackActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mKey:Ljava/lang/String;
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/FeedbackActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/FeedbackActivity;->refreshLog()V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/FeedbackActivity;)Landroid/widget/ScrollView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity;->msvLog:Landroid/widget/ScrollView;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/FeedbackActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity;->mKey:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/FeedbackActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvLog:Landroid/widget/TextView;
return-object v0
.end method
.method private initFeedback()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/FeedbackActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->init(Landroid/content/Context;)V
return-void
.end method
.method private initListeners()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity;->mSpinKey:Landroid/widget/Spinner;
new-instance v1, Lcom/pinguo/camera360/FeedbackActivity$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/FeedbackActivity$1;-><init>(Lcom/pinguo/camera360/FeedbackActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity;->mBtnGenLog:Landroid/widget/Button;
new-instance v1, Lcom/pinguo/camera360/FeedbackActivity$2;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/FeedbackActivity$2;-><init>(Lcom/pinguo/camera360/FeedbackActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity;->mBtnClearLog:Landroid/widget/Button;
new-instance v1, Lcom/pinguo/camera360/FeedbackActivity$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/FeedbackActivity$3;-><init>(Lcom/pinguo/camera360/FeedbackActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method private refreshLog()V
.registers 14
invoke-static {}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getInstance()Lcom/pinguo/camera360/lib/feedback/FeedbackManager;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getFileMap()Ljava/util/Map;
move-result-object v11
const-string/jumbo v12, "COMMON"
invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iget-object v11, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvLogname:Landroid/widget/TextView;
invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v11, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvLog:Landroid/widget/TextView;
const-string/jumbo v12, ""
invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v7, 0x0
const/4 v9, 0x0
const/4 v3, 0x0
const/4 v5, 0x0
:try_start_22
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/FeedbackActivity;->getFilesDir()Ljava/io/File;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v11
sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v6, Ljava/io/FileInputStream;
invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_end_42
.catchall {:try_start_22 .. :try_end_42} :catchall_c4
.catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_42} :catch_106
.catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_42} :catch_92
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_42} :catch_ab
:try_start_42
new-instance v4, Ljava/io/InputStreamReader;
const-string/jumbo v11, "UTF-8"
invoke-direct {v4, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
:try_start_4a
:try_end_4a
.catchall {:try_start_42 .. :try_end_4a} :catchall_e2
.catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_4a} :catch_109
.catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_4a} :catch_fa
.catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_ee
new-instance v10, Ljava/io/BufferedReader;
invoke-direct {v10, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:goto_4f
:try_start_4f
:try_end_4f
.catchall {:try_start_4a .. :try_end_4f} :catchall_e5
.catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4f} :catch_10d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_4f} :catch_fd
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_f1
invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_52
.catchall {:try_start_4f .. :try_end_52} :catchall_e9
.catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_52} :catch_76
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4f .. :try_end_52} :catch_101
.catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_f5
move-result-object v7
if-nez v7, :cond_68
if-eqz v10, :cond_5a
:try_start_57
invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
:cond_5a
if-eqz v4, :cond_5f
invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
:cond_5f
if-eqz v6, :cond_de
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
:try_end_64
.catch Ljava/io/IOException; {:try_start_57 .. :try_end_64} :catch_da
move-object v5, v6
move-object v3, v4
move-object v9, v10
:goto_67
:cond_67
return-void
:try_start_68
:cond_68
iget-object v11, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvLog:Landroid/widget/TextView;
invoke-virtual {v11, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
iget-object v11, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvLog:Landroid/widget/TextView;
const-string/jumbo v12, "\n"
invoke-virtual {v11, v12}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
:try_end_75
.catchall {:try_start_68 .. :try_end_75} :catchall_e9
.catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_75} :catch_76
.catch Ljava/io/UnsupportedEncodingException; {:try_start_68 .. :try_end_75} :catch_101
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_75} :catch_f5
goto :goto_4f
:catch_76
move-exception v0
move-object v5, v6
move-object v3, v4
move-object v9, v10
:try_start_7a
:goto_7a
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_7d
.catchall {:try_start_7a .. :try_end_7d} :catchall_c4
if-eqz v9, :cond_82
:try_start_7f
invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
:cond_82
if-eqz v3, :cond_87
invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
:cond_87
if-eqz v5, :cond_67
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:try_end_8c
.catch Ljava/io/IOException; {:try_start_7f .. :try_end_8c} :catch_8d
goto :goto_67
:catch_8d
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_67
:catch_92
move-exception v0
:try_start_93
:goto_93
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
:try_end_96
.catchall {:try_start_93 .. :try_end_96} :catchall_c4
if-eqz v9, :cond_9b
:try_start_98
invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
:cond_9b
if-eqz v3, :cond_a0
invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
:cond_a0
if-eqz v5, :cond_67
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:try_end_a5
.catch Ljava/io/IOException; {:try_start_98 .. :try_end_a5} :catch_a6
goto :goto_67
:catch_a6
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_67
:catch_ab
move-exception v0
:try_start_ac
:goto_ac
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_af
.catchall {:try_start_ac .. :try_end_af} :catchall_c4
if-eqz v9, :cond_b4
:try_start_b1
invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
:cond_b4
if-eqz v3, :cond_b9
invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
:cond_b9
if-eqz v5, :cond_67
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:try_end_be
.catch Ljava/io/IOException; {:try_start_b1 .. :try_end_be} :catch_bf
goto :goto_67
:catch_bf
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_67
:catchall_c4
move-exception v11
:goto_c5
if-eqz v9, :cond_ca
:try_start_c7
invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
:cond_ca
if-eqz v3, :cond_cf
invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
:cond_cf
if-eqz v5, :cond_d4
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:try_end_d4
.catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d4} :catch_d5
:cond_d4
:goto_d4
throw v11
:catch_d5
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_d4
:catch_da
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:cond_de
move-object v5, v6
move-object v3, v4
move-object v9, v10
goto :goto_67
:catchall_e2
move-exception v11
move-object v5, v6
goto :goto_c5
:catchall_e5
move-exception v11
move-object v5, v6
move-object v3, v4
goto :goto_c5
:catchall_e9
move-exception v11
move-object v5, v6
move-object v3, v4
move-object v9, v10
goto :goto_c5
:catch_ee
move-exception v0
move-object v5, v6
goto :goto_ac
:catch_f1
move-exception v0
move-object v5, v6
move-object v3, v4
goto :goto_ac
:catch_f5
move-exception v0
move-object v5, v6
move-object v3, v4
move-object v9, v10
goto :goto_ac
:catch_fa
move-exception v0
move-object v5, v6
goto :goto_93
:catch_fd
move-exception v0
move-object v5, v6
move-object v3, v4
goto :goto_93
:catch_101
move-exception v0
move-object v5, v6
move-object v3, v4
move-object v9, v10
goto :goto_93
:catch_106
move-exception v0
goto/16 :goto_7a
:catch_109
move-exception v0
move-object v5, v6
goto/16 :goto_7a
:catch_10d
move-exception v0
move-object v5, v6
move-object v3, v4
goto/16 :goto_7a
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/FeedbackActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030052
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->setContentView(I)V
const v1, 0x7f0a01a6
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Spinner;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mSpinKey:Landroid/widget/Spinner;
const v1, 0x7f0a01a8
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mBtnGenLog:Landroid/widget/Button;
const v1, 0x7f0a0190
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mBtnClearLog:Landroid/widget/Button;
const v1, 0x7f0a01aa
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ScrollView;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->msvLog:Landroid/widget/ScrollView;
const v1, 0x7f0a01a9
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvLogname:Landroid/widget/TextView;
const v1, 0x7f0a0195
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvLog:Landroid/widget/TextView;
const v1, 0x7f0a01ab
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mBtnUpload:Landroid/widget/Button;
const v1, 0x7f0a01ac
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mTvUploadInfo:Landroid/widget/TextView;
new-instance v0, Landroid/widget/ArrayAdapter;
const v1, 0x1090008
sget-object v2, Lcom/pinguo/camera360/FeedbackActivity;->KEYS:[Ljava/lang/String;
invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
const v1, 0x1090009
invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
iget-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mSpinKey:Landroid/widget/Spinner;
invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
sget-object v1, Lcom/pinguo/camera360/FeedbackActivity;->KEYS:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
iput-object v1, p0, Lcom/pinguo/camera360/FeedbackActivity;->mKey:Ljava/lang/String;
invoke-direct {p0}, Lcom/pinguo/camera360/FeedbackActivity;->initFeedback()V
invoke-direct {p0}, Lcom/pinguo/camera360/FeedbackActivity;->initListeners()V
const-string v1, " - Lcom/pinguo/camera360/FeedbackActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
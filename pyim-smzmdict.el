;;; pyim-smzmdict.el --- Sanma(triple) Zhengma dict for pyim

;; Author: Yue Shi (Zhizhi)
;; Maintainer: Yuanchen Xie
;; Version: 0.0.1
;; Package-Requires: ((pyim "3.7"))
;; Homepage: https://github.com/p1uxtar/pyim-smzmdict
;; Keywords: convenience, i18n, pyim, Chinese, zhengma

;;; License:

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;; * pyim-smzmdict README                         :README:doc:

;; ** 简介
;; This is the Sanma(triple) Zhengma dict for based on pyim.
;; User needs to install [[Pyim][https://github.com/tumashu/pyim]] before using this package!

;; 这是适用于 pyim 的三码郑码（至至）词库文件，请先安装 pyim 并进行配置后使用。

;; 本词库中的原始数据由三码郑码的作者至至本人提供，可用于非盈利性的交流、分享与使用。

;; ** 安装和使用
;; 1. 下载 pyim 及本词库到 Emacs 可读取的位置；
;; 2. 在emacs配置文件中（比如: ~/.emacs）添加如下代码：
;;    #+BEGIN_EXAMPLE
;;    (require 'pyim-smzmdict)
;;    (pyim-smzmdict-enable)
;;    #+END_EXAMPLE
;; 3. M-x 之后调用 toggle-input-method 函数，回车开始使用。

;;; Code:
;; * 代码                                                               :code:
(require 'pyim)

(pyim-scheme-add
 '(smzm
   :document "三码郑码输入法。"
   :class xingma
   :first-chars "abcdefghijklmnopqrstuvwxyz"
   :rest-chars "abcdefghijklmnopqrstuvwxyz'"
   :code-prefix "smzm/"
   :code-split-length 3
   :code-maximum-length 3
   :prefer-trigger-chars nil))

;;;###autoload
(defun pyim-smzmdict-enable ()
  "Add sanma(triple) zhengma dict to pyim."
  (interactive)
  (let* ((dir (file-name-directory
               (locate-library "pyim-smzmdict.el")))
         (file (concat dir "pyim-smzmdict.pyim")))
    (when (file-exists-p file)
      (if (featurep 'pyim)
          (pyim-extra-dicts-add-dict
           `(:name "smzmdict-elpa" :file ,file :elpa t))
        (message "pyim 没有安装，pyim-wbdict 启用失败。")))))

;; * Footer

(provide 'pyim-smzmdict)
;;; pyim-smzmdict.el ends here

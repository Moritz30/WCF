<?php
namespace wcf\data\box;
use wcf\data\DatabaseObjectList;

/**
 * Represents a list of boxes.
 * 
 * @author	Marcel Werk
 * @copyright	2001-2016 WoltLab GmbH
 * @license	GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @package	WoltLabSuite\Core\Data\Box
 * @since	3.0
 *
 * @method	Box		current()
 * @method	Box[]		getObjects()
 * @method	Box|null	search($objectID)
 * @property	Box[]		$objects
 */
class BoxList extends DatabaseObjectList {
	/**
	 * @inheritDoc
	 */
	public $className = Box::class;
}